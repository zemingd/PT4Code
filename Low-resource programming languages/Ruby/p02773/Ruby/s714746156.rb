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
  s = [''] * n
  n.times{|i| s[i] = InputLine.to_s}
  
  h = {}
  n.times do |i|
    if h[s[i]] == nil then
      h[s[i]] = 1
    else
      h[s[i]] += 1
    end
  end

  m = 0
  h.each{|k, v| m = [m, v].max}
  
  t = []
  h.each do |k, v|
    if v == m then
      t.push(k)
    end
  end

  t.sort.each do |v|
    puts v
  end
end

if self.to_s == 'main' then
  main(ARGV)
end