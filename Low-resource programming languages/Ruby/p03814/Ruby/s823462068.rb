ss = gets.chomp.chars
a_i = 200000
z_i = -1
ss.each_with_index do |s,i|
  if s == "A"
    a_i = i if i < a_i
  elsif s == "Z"
    z_i = i if i > z_i
  end
end
puts z_i - a_i +1