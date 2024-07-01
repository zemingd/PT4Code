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
  (n, m) = InputLine.to_ia
  h = InputLine.to_ia
  
  ys = [0] * n
  m.times do |i|
    (a, b) = InputLine.to_ia

    ys[a - 1] = [ys[a - 1], h[b - 1]].max
    ys[b - 1] = [ys[b - 1], h[a - 1]].max
  end

  puts h.zip(ys).filter{|x, y| x > y}.size.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end