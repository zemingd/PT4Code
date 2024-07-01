n = gets.to_i
members = gets.split(" ").map(&:to_i)
sum = 0
members.map{|x| sum += x}
average = (sum.to_f/n).round

result = 0
members.each do |m|
  result += (m-average)**2
end

print(result)