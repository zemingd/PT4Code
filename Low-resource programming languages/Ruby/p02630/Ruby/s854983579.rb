n = gets.chomp.to_i
sum = 0
a = gets.chomp.split(" ").map { |e|e.to_i  }
q = gets.chomp.to_i
q.times do
  b, c = gets.chomp.split(" ").map { |e|e.to_i  }
  for i in 0..a.count -1 do
    if a[i] == b
      a[i] = c
      sum += c
    else
      sum += a[i]
    end
  end
puts sum
sum = 0
end
