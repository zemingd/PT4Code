x, a, b = gets.chomp.split(" ").map(&:to_i)
limit_day = 10 ** 9 + 1
buy_day = limit_day - a
eat_day = buy_day + b
onaka = limit_day + x
kowasu = onaka + 1
if eat_day <= limit_day
    puts "delicious"
elsif limit_day + x >= eat_day
    puts "safe"
else
    puts "dangerous"
end