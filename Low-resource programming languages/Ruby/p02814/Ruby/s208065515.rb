$debug = false
flag = ARGV.shift
if flag == "-d"
  $debug = true
end

def dputs str
  p str if $debug
end

def max(n, m)
  if n > m
    return n
  else
    return m
  end
end

def min(n, m)
  if n < m
    return n
  else
    return m
  end
end

def gets_all_int
  return gets.chomp.split.map{|v| v.to_i}
end

## start

N, M = gets_all_int
as = gets_all_int.sort.uniq.reverse

def half_common_multiple(ak, p)
  return (ak * (p + 0.5)).to_i
end

ary = []

as.each do |ak|
  p = 1
  ak_ary = []
  loop do
    hcm = half_common_multiple(ak, p)
    break if hcm > M
    dputs "#{ak} *| #{p} => #{hcm} < #{M}"
    ak_ary << hcm
    p += 1
  end

  if ary.empty?
    ary = ak_ary
  else
    ary &= ak_ary
  end
end

puts ary.length