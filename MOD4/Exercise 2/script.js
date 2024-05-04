var position = 1; 

document.getElementById("positionButton").addEventListener("click", alignChanging);
document.getElementById("colorButton").addEventListener("click", changeColor);
document.getElementById("resetButton").addEventListener("click", resetColor);

function alignChanging() {
  var textElement = document.getElementById("text");
  if (position === 1) {
    textElement.style.textAlign = "center";
    position = 2;
  } else if (position === 2) {
    textElement.style.textAlign = "right";
    position = 3;
  } else {
    textElement.style.textAlign = "left";
    position = 1;
  }
}

function changeColor() {
  var bgColorChanging = document.getElementById("bg-changing");
  var randomColor = '#' + Math.floor(Math.random()*16777215).toString(16); // Generate random color
  bgColorChanging.style.backgroundColor = randomColor;
}

function resetColor() {
  var bgColorChanging = document.getElementById("bg-changing");
  bgColorChanging.style.backgroundColor = "#fff";
}
