<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FORM</title>
<style type="text/css">
label {
	display: inline-block;
	width: 200px;
	margin: 5px 5px 5px 5px;
	text-align: left;
}

button {
	width: fit-content;
	padding: 7px 7px 7px 7px;
	margin: 5px 5px 5px 5px;
	background-color: light-blue;
}
</style>
<script>
	function previewImage() {
        var preview = document.querySelector('#image-preview');
        var file    = document.querySelector('input[type=file]').files[0];

        preview.innerHTML = ''; 

        if (file && file.type.startsWith('image/')) {
            var img = document.createElement('img');
            img.src = window.URL.createObjectURL(file);
            img.style.maxWidth = '200px';
            img.style.maxHeight = '200px';
            img.style.marginBottom = '10px';
            preview.appendChild(img);
        }
	}
    function previewImages() {
    	var previewsContainer = document.querySelector('#image-preview');
        previewsContainer.innerHTML = ''; // Clear previous previews

        var fileInputs = document.querySelectorAll('input[type=file]');
        
        fileInputs.forEach(function(fileInput) {
            var files = fileInput.files;

            for (var i = 0; i < files.length; i++) {
                var file = files[i];

                if (!file.type.startsWith('image/')){ continue }

                var img = document.createElement('img');
                img.src = window.URL.createObjectURL(file);
                img.style.maxWidth = '200px';
                img.style.maxHeight = '200px';
                img.style.marginRight = '10px';
                img.style.marginBottom = '10px';
                previewsContainer.appendChild(img);
            }
        });
    }
    

</script>
</head>
<body>
	<div align="center">
		<h1>Spring form learning</h1>
		<form:form action="submitForm" method="post"
			modelAttribute="Objectives">
			<form:label path="objectiveName">Objective:</form:label>
			<form:input path="objectiveName" />
			<br />

			<form:label path="keyResults">Key results:</form:label>
			<form:input path="keyResults" />
			<br />

			<form:label path="contributor">Contributor:</form:label>
			<form:input path="contributor" />
			<br />

			<form:label path="startingDay">Starting day:</form:label>
			<form:input path="startingDay" type="date" />
			<br />

			<form:label path="deadline">Cutoff day:</form:label>
			<form:input path="deadline" type="date" />
			<br />

			<label>Image File:</label>
			<input type="file" name="file" onchange="previewImage()"/>
			<br />

			<label>Upload Files:</label>
			<input type="file" name="files" multiple onchange="previewImages()"/>
			<br />


			<form:button>Add objective(navigation to success page with form submit)</form:button>
		</form:form>
		<button onClick="previewImages()">preview images files</button>
		<div id="image-preview"></div>
		<a href="http://localhost:8000/SpringFormLearning/">back to Home</a>
	</div>


</body>
</html>