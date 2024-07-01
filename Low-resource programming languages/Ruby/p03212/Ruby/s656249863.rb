def is_753?(x)
  s = x.to_s(4)
  s.include?('1') && s.include?('2') && s.include?('3') && !s.include?('0')
end

def henkan(n)
  n.to_s(4).tr('3', '7').tr('2', '5').tr('1', '3').to_i
end

def main(n)
  digits = n.size
  cnt = 0
  (4**(digits + 1)).times do |i|
    return cnt if henkan(i) > n
    cnt += 1 if is_753?(i)
  end
  cnt
end

n = gets.to_i
puts main(n)
