window.addEventListener('load', function(){

  const price = document.getElementById("item-price");
  const tax = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");
 
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
     
})