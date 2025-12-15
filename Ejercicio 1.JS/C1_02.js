//--5. Calcular un precio con IVA--

let precio = prompt("¿Introduce un precio?"); // Declaraos la variable precio
let total = 0; // Declaraos la variable total como memoria de precio + IVA

precio = Number(precio); // Pasamos la variable precio de String a Number

total =precio * 0.21; // Hacemos el calculo del IVA más el precio y lo guardamos en total
total += precio;


console.log("El precio del producto sin IVA es : " + precio + "€");
console.log("El precio del producto con IVA es : " + total + "€");
// Imprimimos por consola una frase con las 3 variables
