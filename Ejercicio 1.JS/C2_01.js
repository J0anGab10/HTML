//--2. Número par o impar--

let numero = prompt("¿Introduce un número?"); // Declaraos la variable numero

numero = Number(numero); // Pasamos la variable numero de String a Number

if(numero % 2 == 0) {
    console.log("El número " + numero + " es un número par.");
} else {
    console.log("El número " + numero + " no es un número par.")
}

