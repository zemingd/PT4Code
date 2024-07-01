n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
count = 0
b = a.sum / (4 * m)

a.each{|i|
  if(i > b)
    count += 1
  end
}

if(count >= m)
  puts "Yes"
else
  puts "No"
end