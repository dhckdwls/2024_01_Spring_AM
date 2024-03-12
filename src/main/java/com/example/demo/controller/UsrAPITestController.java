package com.example.demo.controller;

import com.example.demo.service.APITestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("//")
public class UsrAPITestController {

    private final APITestService apiTestService;

    @Autowired
    public UsrAPITestController(APITestService apiTestService) {
        this.apiTestService = apiTestService;
    }

    @GetMapping("/save")
    public String fetchAndSaveData() {
        apiTestService.fetchAndSaveData();
        return "데이터를 성공적으로 가져오고 저장했습니다!";
    }
}