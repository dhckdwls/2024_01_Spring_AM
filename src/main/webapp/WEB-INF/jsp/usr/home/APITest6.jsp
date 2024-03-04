<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST6"></c:set>

<%@ include file="../common/head.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>지도 이동시키기</title>

</head>
<body>

<script>
//[내 애플리케이션] > [앱 키] 에서 확인한 REST API 키 값 입력
const REST_API_KEY = '	9e69d716eb64b669fb82a55fbb9c2e47';

// KoGPT API 호출을 위한 함수 정의
async function kogptApi(prompt, maxTokens = 1, temperature = 1.0, topP = 1.0, n = 1) {
    try {
        const response = await fetch('https://api.kakaobrain.com/v1/inference/kogpt/generation', {
            method: 'POST',
            headers: {
                'Authorization': 'KakaoAK ' + REST_API_KEY,
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                prompt,
                max_tokens: maxTokens,
                temperature,
                top_p: topP,
                n,
            }),
        });

        const data = await response.json();
        console.log(data);
        return data;
    } catch (error) {
        console.error('Error during API call:', error.message);
        return null;
    }
}

// KoGPT에게 전달할 명령어 구성
const prompt = "인간처럼 생각하고, 행동하는 '지능'을 통해 인류가 이제까지 풀지 못했던";

// 파라미터를 전달해 kogptApi() 함수 호출
kogptApi(
    prompt,
    32,
    1.0,
    1.0,
    3
);
</script>
</body>
</html>

<%@ include file="../common/foot.jspf"%>