while true do
  num = gets.chomp.split('').map {|x| x.to_i }.inject {|sum, n| sum + n}
  break if num == 0
  puts num
end