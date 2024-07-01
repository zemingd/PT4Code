s = gets.chomp.split("").map(&:to_i)

even = Array.new(s.size){|idx| idx % 2}
odd  = Array.new(s.size){|idx| (idx+1) % 2}

count = [0,0]
s.each_with_index do |c,i|
  if c != even[i]
    count[0] += 1
  end

  if c!= odd[i]
    count[1] += 1
  end

end

puts count.min