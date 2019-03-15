const lastDayOfMonth = d => new Date(d.getFullYear(), d.getMonth() + 1, 0).getDate()

console.log(lastDayOfMonth(new Date()))