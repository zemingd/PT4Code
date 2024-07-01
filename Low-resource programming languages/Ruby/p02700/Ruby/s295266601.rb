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
  (a, b, c, d) = InputLine.to_ia

  while ((a > 0) and (c > 0)) do
    c -= b
    if c <= 0 then
      puts 'Yes'
      break
    end
    
    a -= d
    if a <= 0 then
      puts 'No'
      break
    end
  end
end

if self.to_s == 'main' then
  main(ARGV)
end