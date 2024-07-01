n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
max = 10 ** 18

# 0が1個でもあれば結果は0
# 最初に確認しないと [でかい数, ... , でかい数, 0] の形に対応できない
if a_arr.any?{|a| a == 0}
  puts 0
  exit 
end

result = 1
a_arr.each do |a|
  result *= a
  if result > max
    puts -1
    exit
  end
end

puts result
