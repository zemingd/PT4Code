input = gets.chomp.split
a = input[0].to_i - 1
b = input[1].to_i
c = input[2].to_i
d = input[3].to_i

cd = c * d
cd_bigger = c > d ? c : d
cd_bigger.times do |i|
  num = i + 1
  if c % num == 0 && d % num == 0
    cd = num
  end
end

a_c = a / c
a_d = a / d
a_cd = a / cd

b_c = b / c
b_d = b / d
b_cd = b / cd

puts (b - b_c - b_d + b_cd) - (a - a_c - a_d + a_cd)