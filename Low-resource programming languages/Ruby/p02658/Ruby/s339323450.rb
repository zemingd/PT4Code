n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = 1
c = 0
d = 10 ** 18
e = a.include?(0)

if e
  b = 0
else
  a.each do |k|
    b = b * k
    if b > d
      c = 1
      break 
    end
  end
end


puts c == 1 ? '-1' : b