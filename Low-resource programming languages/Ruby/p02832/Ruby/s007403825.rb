n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
index = 1
count = 0
ary1.each{|elem|
  if elem == index
    index += 1   
  else
    count += 1
  end
  }

if count == n
  puts -1
else
  puts count
end
