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
N = gets.to_i
S = gets.strip
ABC="ABC"

cnt = 0
0.upto(S.length - ABC.length) do |i|
  if S[i,3] == ABC
    cnt += 1
  end
end
puts cnt