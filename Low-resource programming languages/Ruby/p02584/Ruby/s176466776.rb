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

def f(x, k, d, i)
  (x - k * d) + 2 * d * i
end

def main(argv)
  (x, k, d) = InputLine.to_ia

  hi = k + 1
  lo = 0
  while hi - lo > 4 do
    dist = (hi - lo) / 3
    midL = lo + dist
    midR = hi - dist

    valL = f(x, k, d, midL).abs
    valR = f(x, k, d, midR).abs

    if valL < valR then
      hi = midR
    else
      lo = midL
    end
  end

  lb = [0, lo - 10].max
  ub = [k, hi + 10].min
  mval = 1e+18.to_i
  (lb..ub).each do |i|
    mval = [mval, f(x, k, d, i).abs].min
  end
  puts mval.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end