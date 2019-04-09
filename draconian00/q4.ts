// 막대의 길이
const N: number = 100;
// 자원량
const m: number = 5;

// 막대를 전부 1로 자를 때 까지의 횟수 === N - 1
const jobTodo: number = N - 1;
// 수행 횟수
let counter: number = 0;
// 자르기 횟수
let sumofJob: number = 0;

console.log(N, jobTodo, m);

// 자르기 횟수가 jobTodo 미만일때 까지 돈다
while (sumofJob < jobTodo) {
  // 매 회차마다 실제로 자르는 횟수는
  // 자원량, 막대의 갯수 중 min 값
  let job = Math.min(m, 2**counter);
  sumofJob += job;
  counter++;
}

console.log(counter);