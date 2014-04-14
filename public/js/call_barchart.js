function displayData() {
	event.preventDefault();
$('#container').css("display", 'block');
}

$('#displayGraph').on('click', displayData);