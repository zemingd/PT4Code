a,b = gets.strip.split.map(&:to_i)
cnt = 0 
a.upto(b) do |i|
  str = i.to_s
  cnt += 1 if str == str.reverse
end
puts cnt
