package com.example.demo.controller;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@RestController
@RequestMapping("/api")
public class UsrTestAPIController {

    private final String baseUrl = "http://apis.data.go.kr/B551011/KorService1/areaBasedList1";
    private final String serviceKey = "7gBxrsj7WSHvOZjYdEQXGXuT9pq9L8NMGDZ9hzG7VnyftpPH7IIKkWxq2HkS94X9AsKLEzXCkaOZeH94lv28Bg"; // 여러분의 실제 서비스 키로 교체하세요

    @GetMapping("/areaCode")
    public ResponseEntity<String> getAreaCode(
            @RequestParam String numOfRows,
            @RequestParam String pageNo,
            @RequestParam String mobileOS,
            @RequestParam String mobileApp) throws UnsupportedEncodingException {

        // 서비스 키 (인증 키)를 인코딩합니다.
        String encodedServiceKey = URLEncoder.encode(serviceKey, "UTF-8");

        // 모바일 앱 이름을 인코딩합니다.
        String encodedMobileApp = URLEncoder.encode(mobileApp, "UTF-8");

        // 매개변수를 포함한 URL을 작성합니다.
        String apiUrl = UriComponentsBuilder.fromUriString(baseUrl)
                .queryParam("serviceKey", encodedServiceKey)
                .queryParam("numOfRows", numOfRows)
                .queryParam("pageNo", pageNo)
                .queryParam("MobileOS", mobileOS)
                .queryParam("MobileApp", encodedMobileApp)
                .build().toUriString();

        // API 호출을 수행합니다.
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.getForEntity(apiUrl, String.class);

        // 필요한 대로 응답을 처리할 수 있습니다.
        return response;
    }
}