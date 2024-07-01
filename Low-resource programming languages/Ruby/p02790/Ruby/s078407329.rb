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
  (a, b) = InputLine.to_ia

  if a > b then
    tmp = a
    a = b
    b = tmp
  end
  
  puts (a.to_s * b)
end

if self.to_s == 'main' then
  main(ARGV)
end