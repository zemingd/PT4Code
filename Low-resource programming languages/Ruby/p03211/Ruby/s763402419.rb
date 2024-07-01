S = gets.chomp.split("").map(&:to_i)
tmp = []
abs = []
S.each do |s|
  tmp << s
  if tmp.length == 3
    abs << (753 - (tmp[0] * 100 + tmp[1] * 10 + tmp[2])).abs
    tmp.shift
  end
end
puts abs.min