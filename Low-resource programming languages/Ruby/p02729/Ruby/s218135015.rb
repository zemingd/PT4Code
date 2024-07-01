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

def calc(x)
  (x * (x - 1)) / 2
end

def main(argv)
  (n, m) = InputLine.to_ia

  puts (calc(n) + calc(m)).to_s
end

if self.to_s == 'main' then
  main(ARGV)
end