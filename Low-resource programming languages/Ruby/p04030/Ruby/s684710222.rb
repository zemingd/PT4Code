def codei
  return gets.split.map &:to_i
end
def codes
  return gets.split.map &:to_s
end

s = gets.chomp
count = 0
(s.length).times do |i|
  if s[i] == "B"
    count += 1
  end
end
s.delete!("B")
if s.length > count
  s.slice!(0..(count))
else
  s.slice!(0..(s.length-2))
end
puts s
