pay, num = gets.chomp.split
unluck_num = gets.chomp.split.map(&:to_i).sort
 
def like_it?(num, pay)
 return true if num.to_a & pay.to_s.chars.map(&:to_i) == []
 return false
end
 
until like_it?( unluck_num, pay)
 pay = pay.to_i + 1
end
puts pay