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
  x = InputLine.to_i

  n = 0
  y = 100.to_f
  while y < x do
    y = (y * 1.01).floor.to_f
    n += 1
  end
  
  puts n.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end