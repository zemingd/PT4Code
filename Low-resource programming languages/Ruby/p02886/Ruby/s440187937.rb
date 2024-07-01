def get_int
  gets.chop.to_i
end

def get_ints
  gets.chop.split.map(&:to_i)
end

def get_double
  gets.chop.to_f
end

def get_str
  gets.chop
end

def get_strs
  gets.chop.split
end

def main
  n = get_int
  ds = get_ints
  ans = 0
  0.upto(n - 2) do |i|
    (i+1).upto(n - 1) do |j|
      ans += ds[i] * ds[j]
    end
  end
  puts ans
end

if __FILE__ == $0
  main
end