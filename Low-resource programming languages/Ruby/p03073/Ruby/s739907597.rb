s = gets.chomp

t1 = ""
t2 = ""
s.length.times do |i|
  if i % 2 == 0 then
    t1 += "1"
    t2 += "0"
  else
    t1 += "0"
    t2 += "1"
  end
end

xor1 = (t1.to_i(2) ^ s.to_i(2))
xor2 = (t2.to_i(2) ^ s.to_i(2))
puts [xor1.to_s(2).count("1"), xor2.to_s(2).count("1")].min


