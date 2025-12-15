//--4. Tabla de multiplicar--

let multi = prompt("Vamos a mostrar la tabla de multiplicar de un número.\n¿Introduce un número?"); // Declaraos la variable multi
let guarda = 0;
multi = Number(multi); // Pasamos la variable multi de String a Number

// Creamos un bucle for que multiplica la variable multi por el contador hasta que llegue a 10
for (let i = 1; i <= 10; i++) { 
    console.log( multi +" por " + i + " = " + multi*i);
}

