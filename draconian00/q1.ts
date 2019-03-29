function isSymmetry(n: string): boolean {
  let n_reverse: string = n.split('').reverse().join('');

  if (n === n_reverse)
    return true;
  return false;
}

let dec: number = 10;

while (1) {
  if (isSymmetry(dec.toString())) {
    
    if (isSymmetry(dec.toString(8))) {

      if (isSymmetry(dec.toString(2))) {

        console.log(dec.toString(), dec.toString(8), dec.toString(2));
        break;
      }
    }
  }
  dec += 1;
}
