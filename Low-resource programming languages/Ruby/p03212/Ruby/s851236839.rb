def is_753?(x)
  s = x.to_s(3)
  s.include?('0') && s.include?('1') && s.include?('2')
end

def henkan(n)
  n.to_s(3).tr('2', '7').tr('1', '5').tr('0', '3').to_i
end

def main(n)
  digits = n.size
  cnt = 0
  (3**(digits + 1)).times do |i|
    return cnt if henkan(i) > n
    cnt += 1 if is_753?(i)
  end
  cnt
end

n = gets.to_i
puts main(n)
