window.addEventListener('load', function(){

  const price = document.getElementById("item-price");
  console.log(price)

  price.addEventListener('input', function(){
    console.log("input OK")
  })
    

    const tax = document.getElementById("add-tax-price");
    console.log(tax)
    
    function calc(price) {
      let calc = price * 0.1;
      return calc
    }
    console.log(calc(price))     
      

    const profit = document.getElementById("profit");
    console.log(profit)
  
    function sale(price) {
      let sale = price - calc;
      return sale
    }
  console.log(sale(price))   
  
})