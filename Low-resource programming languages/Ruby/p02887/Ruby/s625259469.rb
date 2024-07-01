def cutting(str)
  (1..(str.length-1)).each do |i|
    if str[i-1] == str[i]
      str.slice!(i)
    end
  end
end

n = gets.to_i
s = gets.chomp

n.times do
  cutting(s)
end

puts s.length