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
  a = [nil] * 3
  3.times do |y|
    a[y] = InputLine.to_ia
  end

  n = InputLine.to_i
  n.times do |i|
    b = InputLine.to_i
    
    3.times do |y|
      3.times do |x|
        a[y][x] = 0 if a[y][x] == b
      end
    end
  end

  flag = false

  3.times do |y|
    _flag = true
    3.times do |x|
      _flag = false if a[y][x] > 0
    end
    flag = true if _flag
  end

  3.times do |x|
    _flag = true
    3.times do |y|
      _flag = false if a[y][x] > 0
    end
    flag = true if _flag
  end

  [
    [[0, 0], [1, 1], [2, 2]],
    [[0, 2], [1, 1], [2, 0]]
  ].each do |v|
    _flag = true
    v.each do |x|
      _flag = false if a[x[0]][x[1]] > 0
    end
    flag = true if _flag
  end

  puts (flag ? 'Yes' : 'No')
end

if self.to_s == 'main' then
  main(ARGV)
end