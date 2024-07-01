require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

X = gets_i

cases = (-64..64).to_a.repeated_combination(2).to_a
cases.each do |a, b|
  if X == a**5 - b**5
    puts [a, b].join(" ")
    exit
  elsif X == b**5 - a**5
    puts [b, a].join(" ")
    exit
  end
end
