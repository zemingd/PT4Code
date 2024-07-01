n,y = gets.chomp.split(" ").map(&:to_i)
for i in 0..8
  x = y/1000-n+i
  if x >= 0 && x%9 == 0 && n-i-x/9 >= 0
    puts "#{x/9} #{i} #{n-i-x/9}"
    exit
  end
end
puts "-1 -1 -1"