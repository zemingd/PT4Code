k = gets.chomp.to_i
a,b = gets.chomp.split(' ').map(&:to_i)

(a..b).map do |n|
  if n%k == 0
    puts "OK"
  else
    puts "NG"
  end