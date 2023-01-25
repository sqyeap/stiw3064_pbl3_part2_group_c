var value =1;

function runMethod(){
    if(value==1){
        w3_open();

    } else w3_close()
}

function w3_close() {
    value = 1;
    document.getElementById("mySidebar").style.display = "none";
}

function w3_open() {
    value = 2;
    document.getElementById("mySidebar").style.width = "30%";
    document.getElementById("mySidebar").style.display = "block";
}
let number = 3;
function setStatus(button){
    var x = button;

    switch (x) {
        case 1:
            document.getElementById("subjectBar1").style.display = "none";
            number = number - 1;
            document.getElementById("badge").innerHTML = number;
            document.getElementById("1").disabled = true;
            break;
        case 2:
            document.getElementById("subjectBar2").style.display = "none";
            number = number - 1;
            document.getElementById("badge").innerHTML = number;
            document.getElementById("2").disabled = true;
            break;
        case 3:
            document.getElementById("subjectBar3").style.display = "none";
            number = number - 1;
            document.getElementById("badge").innerHTML = number;
            document.getElementById("3").disabled = true;
            break;

    }

}