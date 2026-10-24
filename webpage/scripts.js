const buttonpressed = document.getElementById("button")
const socket = new WebSocket("ws://localhost:3000");
    socket.addEventListener("open", (event) => {
        socket.send("Hello Server!");
    });

function test(){
    console.log("test");
    socket.send("Test");
};