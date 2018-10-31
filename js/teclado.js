function Teclado(elemento) {
  this.elemento = elemento;

  this.pressionadas = [];

  var teclado = this;
  elemento.addEventListener("keydown", function(event) {
    teclado.pressionadas[event.keyCode] = true;
  });

  elemento.addEventListener("keyup", function(event) {
    teclado.pressionadas[event.keyCode] = false;
  });
}

Teclado.prototype = {
  pressionada: function(tecla) {
    return this.pressionadas[tecla];
  }
}
