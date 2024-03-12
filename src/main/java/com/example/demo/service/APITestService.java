package com.example.demo.service;

import java.io.StringReader;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.example.demo.repository.APITestRepository;
import com.example.demo.vo.APIarticle;

@Service
public class APITestService {

    private final APITestRepository apiTestRepository;

    @Autowired
    public APITestService(APITestRepository apiTestRepository) {
        this.apiTestRepository = apiTestRepository;
    }

    public void fetchAndSaveData() {
        // API 호출 및 데이터 추출 로직
        // (인증키, URL, 파라미터 등을 활용하여 API 호출)

        // 실제 API 호출
        String serviceKey = "7gBxrsj7WSHvOZjYdEQXGXuT9pq9L8NMGDZ9hzG7VnyftpPH7IIKkWxq2HkS94X9AsKLEzXCkaOZeH94lv28Bg%3D%3D";
        String numOfRows = "5";
        String pageNo = "1";
        String arrange = "A";
        String areacode = "";
        String contenttypeid = "12";
        String mobileOS = "ETC";
        String mobileApp = "TestApp";

        String apiUrl = "http://apis.data.go.kr/B551011/KorService1/areaBasedList1" +
                "?serviceKey=" + serviceKey +
                "&numOfRows=" + numOfRows +
                "&pageNo=" + pageNo +
                "&MobileOS=" + mobileOS +
                "&MobileApp=" + mobileApp +
                "&arrange=" + arrange +
                "&areacode=" + areacode +
                "&MobileApp=" + mobileApp;

        RestTemplate restTemplate = new RestTemplate();
        String responseData = restTemplate.getForObject(apiUrl, String.class);

        // XML 파싱 및 데이터 추출 로직
        try {
            // XML을 파싱
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(new InputSource(new StringReader(responseData)));

            // 필요한 정보 추출
            NodeList itemList = doc.getElementsByTagName("item");
            for (int i = 0; i < itemList.getLength(); i++) {
                Element item = (Element) itemList.item(i);

                // XML 데이터에서 필요한 값 추출
                APIarticle article = new APIarticle();
                article.setAddr1(getElementValue(item, "addr1"));
                article.setAddr2(getElementValue(item, "addr2"));
                article.setAreacode(Integer.parseInt(getElementValue(item, "areacode")));
                // 이하 필요한 정보들을 추출하도록 계속 작성

                System.err.println(article.getAddr1());

                // 데이터 저장
                apiTestRepository.saveData(article);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("실패했네");// 예외 처리는 적절히 수정하세요.
        }
    }

    private String getElementValue(Element element, String tagName) {
        NodeList nodeList = element.getElementsByTagName(tagName);
        if (nodeList.getLength() > 0) {
            return nodeList.item(0).getTextContent();
        }
        return null;
    }
}