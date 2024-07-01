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
  (a, b, c) = InputLine.to_ia

  v = [a, b, c].sort
  if ((v[0] == v[1]) && (v[1] == v[2])) then
    puts 'No'
  elsif ((v[0] == v[1]) || (v[1] == v[2])) then
    puts 'Yes'
  else
    puts 'No'
  end
end

if self.to_s == 'main' then
  main(ARGV)
end