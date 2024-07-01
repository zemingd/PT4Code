price, num = gets.chomp.split
unluck_num = gets.chomp.split.map(&:to_i).sort
luck_num = ([0, 1, 2, 3, 4, 5, 6, 7, 8, 9] - unluck_num).sort

def like_it?(num, pay)
 num.each { |n|
  return false if pay.to_s.chars.map(&:to_i).include?( n )
 }
 return true
end

pay = price
until like_it?( unluck_num, pay)
 pay = pay.to_i + 1
end
puts pay
