

{/* <script type="text/javascript"> */}
document.getElementBy("myButton").onclick = function(){
	const myCheckBox = document.getElementsById("myCheckBox");
	if(document.getElementById("myCheckBox").checked){
		console.log("You are subscribed");
	}
	else{
		console.log("you are not subscribed");
	}

	let temp= 32;
	temp = toFahrenheit(temp);
	console.log(temp);

	function toCelsius(temp){
		return (temp - 32) * (5/9);
	}

	function toFahrenheit(temp){

	}
}

// </script>