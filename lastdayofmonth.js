const lastDayOfMonth = d => new Date(d.getFullYear(), d.getMonth() + 1, 0).getDate()

console.log(`Last day of the month is ${lastDayOfMonth(new Date())}`)