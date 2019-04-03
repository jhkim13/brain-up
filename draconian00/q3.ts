interface Array<T> {
  fill(value: T): Array<T>;
}

let counter: Array<number> = new Array(100);
counter.fill(0);


for (let i = 0; i < 100; i++) {
  // i = index of counter array;
  // n = number;
  const n = i + 1;

  for (let j = 1; j <= n; j++) {
    if (j === 1) { continue; }
    if (n % j === 0) {
      // j 가 n 의 약수일 때 counter++;
      counter[i]++;
    }
  }
}

// counter 안의 숫자가 짝수일 경우 뒷면
let resultArr: Array<number> = counter.map((n, i) => { if (n % 2 === 0) return i+1; });
resultArr = resultArr.filter(el => el !== undefined);
console.log(resultArr.toString());
