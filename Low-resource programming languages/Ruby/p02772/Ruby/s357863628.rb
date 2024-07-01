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
  n = InputLine.to_i
  a = InputLine.to_ia

  b = a.select{|v| (v % 2) == 0}

  c = b.select{|v| (v % 3) == 0 || (v % 5) == 0}

  if b.size == c.size then
    puts 'APPROVED'
  else
    puts 'DENIED'
  end
end

if self.to_s == 'main' then
  main(ARGV)
end