k = gets.chomp.to_i
a,b = gets.chomp.split(' ').map(&:to_i)
 
(a..b).each do |n|
  if n%k == 0
    puts "OK"
    exit
  end
  puts "NG"
end