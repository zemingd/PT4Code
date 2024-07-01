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

def solve(k, a, b)
  x = (a / k) * k

  return true if a == x

  x += k

  return x <= b
end

def main(argv)
  k = InputLine.to_i
  (a, b) = InputLine.to_ia

  puts (solve(k, a, b) ? 'OK' : 'NG')
end

if self.to_s == 'main' then
  main(ARGV)
end