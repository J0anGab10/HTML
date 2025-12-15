//--3. Función para calcular un descuento--

function Descuento(precio, descuento) {
    return precio = precio * descuento; 
}
let precio = prompt("Calculo de un descuento.\n\n¿Introduce el precio del producto?");
let descuento = prompt("Calculo de un descuento.\n\n¿Introduce el numero sin porcentaje del descuento?");

precio = Number(precio);
descuento = Number(descuento);

descuento = descuento/100;

console.log(Descuento(precio,descuento));

