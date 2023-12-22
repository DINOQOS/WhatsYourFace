<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>동물 관상 분류기</title>
</head>
<body class="bg-light">
    <div class="container mt-5" style="text-align: center;">
        <h1>나의 동물상</h1>
        <img src="${pageContext.request.contextPath}/Resource/quokka.png" alt="" class="img-fluid" width="300" height="300">
        <p>사진을 업로드 해보세요! 당신의 동물상은 도대체 무엇일까요?! </p>
        <div style="text-align: center;">
            <form id="uploadForm" enctype="multipart/form-data">
                <input type="file" name="image" onchange="previewImage(this)">
                <input type="button" value="동물관상 분석" onclick="uploadImage()">
            </form>
            <img id="preview" width="299" height="299" style="display:none;">
            <h2 id="prediction"></h2>
            <h2 id="result"></h2>
            <div id="animalInfo">
            	<img id="animalImg" src=""/>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    var result ="";
        function previewImage(input){
            let file = input.files[0];
            let reader = new FileReader();
            reader.onload = function(e){
                $("#preview").attr("src", e.target.result).show();
            }
            reader.readAsDataURL(file);
        }
        
        function uploadImage(){
            let formData = new FormData($("#uploadForm")[0]);
            $.ajax({
                type: "POST",
                url: "http://127.0.0.1:5000/upload", // URL 수정
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(res) {
                    // 성공적으로 응답을 받았을 때의 처리 코드
                    console.log(res.prediction);
        	        $("#prediction").text(res.prediction);
        	        result=res.prediction;
        	        sendAnimalToJavaBackend(res.prediction)
        	        let animalinfoHTML = "<h3>관상 정보:</h3>";
        	        
        	        
        	    }
        	});
        }
        function sendAnimalToJavaBackend(animal) {
            $.ajax({
                url: "http://localhost:8080/ANIMAL/homeAction.jsp",
                type: "POST",
                data: { animal: animal },
                dataType: "json",
                success: function(response) {
                    // 서버로부터 받은 응답을 처리합니다.
                    console.log("서버 응답:", response);
                    $("#result").text(response.result);
                },
                error: function(xhr, status, error) {
                    // 요청 실패 시 처리
                    console.error("요청 실패:", error);
                }
            });
        }


    </script>

</body>
</html>
