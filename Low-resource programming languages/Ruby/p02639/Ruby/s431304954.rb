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

N = 5

def main(argv)
  xs = InputLine.to_ia

  idx = -1
  N.times do |n|
    idx = n + 1 if xs[n] == 0
  end
  puts idx.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end