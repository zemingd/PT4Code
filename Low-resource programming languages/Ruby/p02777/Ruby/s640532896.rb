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
  (s, t) = InputLine.to_sa
  (a, b) = InputLine.to_ia
  u = InputLine.to_s

  if s == u then
    puts [a - 1, b].map(&:to_s).join(' ')
  else
    puts [a, b - 1].map(&:to_s).join(' ')
  end
end

if self.to_s == 'main' then
  main(ARGV)
end