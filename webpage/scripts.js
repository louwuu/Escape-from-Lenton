const ip_addr = document.getElementById("ip");
var socket;
function submit() {
    if (ip_addr.value != "") 
    socket = new WebSocket("ws://"+ ip_addr.value +":3000");
    const con_setup = document.getElementById("connection-setup");
    con_setup.remove();
    //console.log("ws://"+ ip_addr.value +":3000");
}

// const socket = new WebSocket("ws://10.249.64.132:3000");
//     socket.addEventListener("open", (event) => {
//         socket.send("Hello Server!");
//     });


function test(){
    console.log("test");
    socket.send("Test");
    socket.send("1");
};button