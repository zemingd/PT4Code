class InputLine
  def self.to_s
    gets.chomp
  end

  def self.to_i
    InputLine.to_s.to_i
  end
  
  def self.to_f
    InputLine.to_s.to_f
  end

  def self.to_sa
    InputLine.to_s.split(' ')
  end

  def self.to_ia
    InputLine.to_sa.map(&:to_i)
  end
  
  def self.to_fa
    InputLine.to_sa.map(&:to_f)
  end
end

def main(argv)
  (n, m, k) = InputLine.to_ia
  a = InputLine.to_ia
  b = InputLine.to_ia

  s = [0] * (n + 1)
  n.times{|i| s[i + 1] = a[i] + s[i]}
  t = [0] * (m + 1)
  m.times{|j| t[j + 1] = b[j] + t[j]}

  c = 0
  (n + 1).times do |i|
    break if s[i] > k
    j = t.bsearch_index{|x| x > k - s[i]}

    if j == nil then
      j = m
    elsif j == 0 then
      j = 0
    else
      j -= 1
    end

    c = [c, i + j].max
  end
  puts c.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end