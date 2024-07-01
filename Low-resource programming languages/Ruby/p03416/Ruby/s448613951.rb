a,b = gets.split(" ").map!{|i| i.to_i}
sum = 0
a.upto(b) do |k|
  c = k.to_s
  if s[0] == s[4] and s[1] == s[3]
    sum += 1
  end
end
puts sum
