const buttonpressed = document.getElementById("button")
const socket = new WebSocket("ws://127.0.0.1:3000");
    socket.addEventListener("open", (event) => {
        socket.send("Hello Server!");
    });

function test(){
    console.log("test");
    socket.send("Test");
    socket.send("1");
};