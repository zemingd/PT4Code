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

  mval = 1e+18
  hi = k + 1
  lo = 0
  while hi - lo > 1 do
    mid = (hi + lo) / 2
    val = f(x, k, d, mid)

    if val.abs < mval then
      hi = mid
    else
      lo = mid
    end

    mval = [mval, val].min
  end

  puts [f(x, k, d, lo), f(x, k, d, hi)].map{|x| x.abs}.min.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end