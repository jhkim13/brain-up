import moment from 'moment';

function isSymmetry(n: string) {
  var n_reverse = n.split('').reverse().join('');
  if (n === n_reverse)
      return true;
  return false;
}

let day: moment.Moment = moment('19641010');

while (Number(day.format('YYYYMMDD')) <= 20200724) {
  let num: number = Number(day.format('YYYYMMDD'));
  let bin: string = num.toString(2);

  if (isSymmetry(bin)) {
    console.log(num, bin);
  }
  day.add(1, 'day');
}

// console.log(moment().format('hhmmss-YYYYMMDD'));
