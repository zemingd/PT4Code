n = gets.chomp.to_i
s = gets.chomp.chars

min = Float::INFINITY
s.each_with_index do |t,i|
  l = 0
  if i  > 0
    l = s[0..i].count("W")
  end
  r = s[i+1..-1].count("E")
  min = [min, l+r].min
end

p min
