n = gets.chomp.to_i

def to_755(n)
  n.gsub('3','7').gsub('2', '5').gsub('1', '3')
end

ans = 0
1000000.times do |i|
  s = i.to_s(4)
  uniq = s.split(//).uniq
  if uniq.delete('0') == nil and uniq.size == 3
    ans += 1
    # p to_755(s)
  end
  break if to_755(s).to_i > n
end

puts ans
