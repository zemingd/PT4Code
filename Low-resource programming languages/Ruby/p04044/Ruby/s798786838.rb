n, l = gets.chomp.split(" ").map{|i| i.to_i}

s = Array.new(n)

for i in 0...n
  s[i] = gets.chomp
end


z = ""

for k in 0...n
  x = s[0]
  y = 0
  for i in 0...n-k
    if x > s[i]
      x = s[i]
      y = i
      # puts "x = #{x}"
    end
  end
  
  s.delete_at(y)
  z = z + x
  
  # p s
end

puts z


