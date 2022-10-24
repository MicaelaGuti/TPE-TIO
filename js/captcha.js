let botonRandom = document.getElementById("btn-random").addEventListener("click", generarRandom);

let inputRandom = document.getElementById("txt-random");


let botonCompare= document.getElementById("btn-compare").addEventListener("click" , comparar);

let inputCompare = document.getElementById("txt-compare");

let mostrarResultado = document.querySelector("#resultado");
mostrarResultado.innerHTML;

function generarRandom() {
    let random = Math.floor(Math.random() * (9999 - 1000) + 1000);
    inputRandom.value = random;
}

function comparar() {
    if (inputRandom.value == inputCompare.value){
        mostrarResultado.innerHTML= "Tu consulta se ha enviado con exito"
    }
    else{
        mostrarResultado.innerHTML = "Upss algo fallado, vuelve a intentarlo"
    }
}
