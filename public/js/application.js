var questionCount = 0

var appendQuestion = function(){
	console.log("Clicked!")
	questionCount++
	console.log("questions: "+questionCount)
	$node = '<label for="question'+ questionCount+'">Question Text: : </label><input type="text" name="question'+questionCount+'" id="question'+questionCount+'"><span class="removeQuestion">Remove Question</span><span id="addChoice">Add Answer Choice</span></p>';
	$(this).parent().before($node)
}

var start = function(){
	$('#addQuestion').on('click', appendQuestion())
}

$(document).ready(start())