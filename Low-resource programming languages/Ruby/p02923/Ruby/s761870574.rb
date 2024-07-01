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

N = gets_all_int[0]
Hs = gets_all_int

prev = Hs[0]
cnt = 0
1.upto(N-1) do |n|
  if Hs[n] <= prev
    cnt += 1
  else
    cnt = 0
  end
  prev = Hs[n]
end

puts cnt