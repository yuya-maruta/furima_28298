window.addEventListener('load', function(){

  const price = document.getElementById("item-price");
  const tax = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");

  console.log(price)

  price.addEventListener("input", (e) => {

    const price_num = document.getElementById("item-price").value;
    console.log(price_num)

    let tax_num = Math.round(price_num * 0.1);
    console.log(tax)
    tax.innerHTML = tax_num

    let profit_num = price_num - tax_num;
    console.log(profit)
    profit.innerHTML = profit_num
  });


  // console.log(price)
  
  
 
  //price.addEventListener('input', function(){
    //console.log("input OK")
  //})
    

  //   const tax = document.getElementById("add-tax-price");
  //   console.log(tax)
    
  //   function calc(price) {
  //     let calc = price * 0.1;
  //     return calc
  //   }
  //   console.log(calc(price))     
      

  //   const profit = document.getElementById("profit");
  //   console.log(profit)
  
  //   function sale(price) {
  //     let sale = price - calc;
  //     return sale
  //   }
  // console.log(sale(price))   
  
})