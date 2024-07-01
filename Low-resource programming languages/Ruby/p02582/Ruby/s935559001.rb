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
  s = InputLine.to_s

  d = 0

  3.times do |i|
    next if s[i] == 'S'
    j = 0
    while i + j < 3 do
      break if s[i + j] == 'S'
      j += 1
    end
    d = [d, j].max
  end

  puts d.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end