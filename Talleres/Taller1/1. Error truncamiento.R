redondeoPiso = function(numero,decimales)
{
  numeroAux=numero
  numeroFloor=floor(numero)
  cifras = 0
  numeroFinal = 0
  
  aux=numeroFloor
  while(aux>=1)
  {
    aux=aux/10
    cifras = cifras+1
  }
  n=cifras-decimales
  aux = numeroFloor
  if(n>0)
  {
    for(i in 1:n)
    {
      aux=aux/10
    } 
    numeroFinal= floor(aux)
    return(numeroFinal)  
  }
  aux=numero
  if(n<0)
  {
    n=n*-1
    aux=aux*(10^n)
    aux= floor(aux)
    aux= aux/(10^n)
    numeroFinal=aux
    return (numeroFinal)
  }
  return(numeroFloor)
  
}

errorRe = function(numero,decimales){
  rd = redondeoPiso(numero, decimales)
  error = abs((numero - rd)/numero)
  error = error *100
  return(error)
}

num = 536.78
dec = 4
errorRe(num, dec)
