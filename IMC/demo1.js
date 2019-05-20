
  function calcularIMC()
  {
    var peso, altura, imc, leyenda;

    peso = document.getElementById("peso").value;
    altura=document.getElementById("altura").value/100;

    imc = peso/(altura*altura);

    document.getElementById("imc").value=imc.toFixed(2);

   
    if(imc<=20.5){
      leyenda="Estas delgado. Engorda" + (altura* altura * 20.5 -peso).toFixed(1) + " Kilos ";   
    }
    else if(imc=>25.5)
    {
      leyenda="Tienes sobrepeso. Ya bajale" + (peso-altura* altura * 25.5).toFixed(1) + " Kilos ";    
    }
    else 
    {
      leyenda="Estas bien";    
    }
    document.getElementById("leyenda").value=leyenda;
  }
