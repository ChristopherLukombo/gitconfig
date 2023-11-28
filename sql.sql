new Date(Date.UTC(date.year, date.month - 1, date.day))

var todayDate = new Date().toISOString().slice(0, 10);
console.log(todayDate);
