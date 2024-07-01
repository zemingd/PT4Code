s = gets()
# s = "35753"
ss = s.split('')
min = 1000000
ss.each_with_index do |v, i|
  if i + 3 <= s.length
    a = s[i]
    b = s[i + 1]
    c = s[i + 2]
    num = ((a + b + c).to_i - 753).abs
    min = min > num ? num : min
  end
end
p min
