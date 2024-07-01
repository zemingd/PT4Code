N = gets.to_i
ary = gets.split(" ").map{|i| i.to_i}

i = 1
count = 0
ary.each do |num|
  if num == i
	count += 1
    i += 1
  end
end

if count == 0
  puts -1
else
  puts N - count
end