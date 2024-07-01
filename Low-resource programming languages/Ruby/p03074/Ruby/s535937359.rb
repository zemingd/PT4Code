N, K = gets.split.map(&:to_i)
S = gets.chomp

def go(s, k)
  a = s.chars.chunk(&:itself).map{|e, f| [e, f.size]}
  a = [['1', 0]] + a if a[0][0] == '0'
  a = a + [['1', 0]] if a[-1][0] == '0'
  k.times do
    break if a.size == 1
    j = 1.step(a.size - 2, 2).max_by{|i| a[i - 1][1] + a[i][1] + a[i + 1][1]}
    a[j - 1][1] = a[j - 1][1] + a[j][1] + a[j + 1][1]
    a.slice!(j, 2)
  end
  a.map{|x, y| x == '1' ? y : 0}.max
end

puts [go(S, K), go(S.gsub(/[01]/, '0' => '1', '1' => '0'), K - 1)].max