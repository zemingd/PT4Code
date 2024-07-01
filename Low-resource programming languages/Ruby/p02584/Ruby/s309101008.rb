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

  mval = 1e+18.to_i
  hi = k + 1
  lo = 0
  while hi - lo > 1 do
    mid = (hi + lo) / 2
    val = f(x, k, d, mid).abs

    if val < mval then
      hi = mid
    else
      lo = mid
    end

    mval = [mval, val].min
  end

  lb = [0, lo - 1000].min
  ub = [k, hi + 1000].max
  mval = 1e+18.to_i
  (lb..ub).each do |i|
    mval = [mval, f(x, k, d, i).abs].min
  end
  puts mval.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end