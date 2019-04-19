let count_1000 = 0;
let objBill = 1000;

for (let n_500=0; n_500<=objBill/500; n_500++) {
  for (let n_100=0; n_100<=objBill/100; n_100++) {
    for (let n_50=0; n_50<=objBill/50; n_50++) {
      for (let n_10=0; n_10<=objBill/10; n_10++) {
        if (
          // n_500 + n_100 + n_50 + n_10 <= 15 &&
          n_500*500 + n_100*100 + n_50*50 + n_10*10 === 1000) {

            count_1000++;
        }
      }
    }
  }
}

console.log(count_1000);
