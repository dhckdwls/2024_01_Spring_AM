package com.example.demo.controller;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

@RestController
@RequestMapping("/api")
public class UsrAPITestController {

    // 개발자가 발급받은 서비스 키
    private static final String SERVICE_KEY = "7gBxrsj7WSHvOZjYdEQXGXuT9pq9L8NMGDZ9hzG7VnyftpPH7IIKkWxq2HkS94X9AsKLEzXCkaOZeH94lv28Bg%3D%3D";

    // API 호출 기본 URL
    private static final String API_BASE_URL = "http://apis.data.go.kr/B551011/KorService1/areaBasedList1";

    @GetMapping("/usr/home/test1")
    public void getAreaCode(
            @RequestParam(defaultValue = "10") int numOfRows,
            @RequestParam(defaultValue = "1") int pageNo,
            @RequestParam String mobileOS,
            @RequestParam String mobileApp,
            @RequestParam(defaultValue = "A") String arrange,
            @RequestParam(required = false) String areaCode,
            @RequestParam int contentTypeId) {



        // API 호출 URL 조립
        String apiUrl = API_BASE_URL + "?serviceKey=" + SERVICE_KEY +
                "&pageNo=" + pageNo +
                "&numOfRows=" + numOfRows +
                "&MobileOS=" + mobileOS +
                "&MobileApp=" + "AppTest" +
                "&arrange=" + "A" +
                "&areaCode=" + "1" +
                "&contentTypeId=" + "12";

        // API 호출
        RestTemplate restTemplate = new RestTemplate();
        String xmlText = restTemplate.getForObject(apiUrl, String.class);

        // XML 파싱
        Document xmlDoc = parseXML(xmlText);

        // 여기서 XML 문서를 활용하여 원하는 작업을 수행할 수 있습니다.
        // 예를 들어, XML 문서를 자바 객체로 매핑하거나 다른 작업을 수행할 수 있습니다.
    }




    private Document parseXML(String xmlText) {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            InputSource inputSource = new InputSource(new StringReader(xmlText));
            return builder.parse(inputSource);
        } catch (Exception e) {
            throw new RuntimeException("XML 파싱 중 오류 발생", e);
        }
    }
    
    
    
}