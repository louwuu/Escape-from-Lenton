function createManualControls() {
    console.log("hi");

    var button;

    var arr = new Array("accelerate", "deaccelerate", "left", "right")

    const controls = document.createElement("div");


    for (i = 0; i < 4; i++) {
        button = document.createElement("button");
        button.id = arr[i];
        button.textContent = arr[i]
        controls.appendChild(button)
    }

    document.getElementById("body").appendChild(controls);  

}