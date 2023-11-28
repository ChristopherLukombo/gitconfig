new Date(Date.UTC(date.year, date.month - 1, date.day))

var todayDate = new Date().toISOString().slice(0, 10);
console.log(todayDate);

https://stackblitz.com/edit/angular-bkuexc?file=src%2Fapp%2Fdatepicker%2Fdatepicker.utc.date.adapter.ts

new Date().toLocaleString("en-US", {timeZone: "America/New_York"})

 Europe/Paris
 new Date().toLocaleString("en-US", {timeZone: "Europe/Paris"
 const now = new Date();
    return new Date(Date.UTC(now.getFullYear(), now.getMonth(), now.getDate()));
