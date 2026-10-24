const buttonpressed = document.getElementById("button")

function test(){
    console.log("test");
    $.post("localhost:3000", "test", (data, status) => {console.log(data);});
};