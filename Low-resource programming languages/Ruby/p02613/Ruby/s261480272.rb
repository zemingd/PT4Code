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

AC = 0
WA = 1
TLE = 2
RE = 3

def main(argv)
  n = InputLine.to_i

  c = [0] * 4
  n.times do
    s = InputLine.to_s
    case s
    when 'AC' then
      c[AC] += 1
    when 'WA' then
      c[WA] += 1
    when 'TLE' then
      c[TLE] += 1
    when 'RE' then
      c[RE] += 1
    end
  end

  puts 'AC x '  + c[AC].to_s
  puts 'WA x '  + c[WA].to_s
  puts 'TLE x ' + c[TLE].to_s
  puts 'RE x '  + c[RE].to_s
end

if self.to_s == 'main' then
  main(ARGV)
end