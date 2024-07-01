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
  if ds[0] != 0
    puts 0
    exit 0
  end
  ds_with_i = ds.map.with_index.to_a
  ds_with_i.sort_by! {|e| e[0] }
  branch = Hash.new(0)
  ans = 1
  found_zero = false
  ds_with_i.each do |d, i|
    if d == 0
      if not found_zero
        branch[0] = 1
        found_zero = true
      else
        puts 0
        exit 0
      end
    else
      m = branch[d-1]
      ans *= m
      ans = ans % 998244353
      branch[d] += 1
    end
  end
  puts ans
end

if __FILE__ == $0
  main
end


