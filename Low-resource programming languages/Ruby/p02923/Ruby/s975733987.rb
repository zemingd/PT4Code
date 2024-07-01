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

dputs N
dputs Hs

cnt = 0
max = 0
1.upto(N-1) do |n|
  dputs "#{Hs[n] <= Hs[n-1]} max =#{max}"
  if Hs[n] <= Hs[n-1]
    cnt += 1
  else
    if max < cnt
      max = cnt
    end
    cnt = 0
  end
end

puts max