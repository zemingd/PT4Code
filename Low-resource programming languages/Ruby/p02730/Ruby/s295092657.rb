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

def is_palindrome(s)
  (s.size / 2).times do |i|
    return false unless s[i] == s[(s.size - 1) - i]
  end
  return true
end

def main(argv)
  s = InputLine.to_s
  t = s[0...(s.size / 2)]
  u = s[((s.size / 2) + 1)...s.size]

  flag = [s, t, u].map{|s| is_palindrome(s)}.reduce(true){|f, g| f && g}

  puts (flag ? 'Yes' : 'No')
end

if self.to_s == 'main' then
  main(ARGV)
end