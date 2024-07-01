n = gets
s_array = Array.new(n)
for i in 1..n do
  s_array.push(gets.split('').sort.join(''))
end
s_uniq = s_array.uniq
cnt = 0
s_uniq.each { |s| cnt += (0..s_array.count(s)).to_a.sum }
p cnt
