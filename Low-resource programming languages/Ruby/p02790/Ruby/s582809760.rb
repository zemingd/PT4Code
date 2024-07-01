a, b = gets.split.map(&:to_i)

aaa = ""
bbb = ""

(1..b).each do |i|
  aaa << a.to_s
end

(1..a).each do |i|
  bbb << b.to_s
end

puts [bbb, aaa].sort[0]