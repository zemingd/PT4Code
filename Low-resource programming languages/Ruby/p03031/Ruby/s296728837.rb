n, m = gets.chomp.split(' ').map(&:to_i)

arr = []
m.times do
  k, *s = gets.chomp.split(' ').map(&:to_i)
  arr << s
end

p = gets.chomp.split(' ').map(&:to_i)

pat = []
0..(2**n).times do |i|
  pat << i.to_s(2).rjust(n, '0').chars.map(&:to_i)
end


counter = 0
pat.each do |pa|
  flg = true
  ans = 0
  arr.each_with_index do |elm, idx|
    elm.each do |i|
      ans += pa[i - 1]
    end
    if ans % 2 != p[idx]
      flg = false
    end
  end
  if flg
    counter += 1
  end
end

puts counter