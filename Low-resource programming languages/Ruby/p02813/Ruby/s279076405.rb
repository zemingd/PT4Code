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
P = gets_all_int
Q = gets_all_int

a = 0
b = 0
P.sort.permutation.to_a.each_with_index do |elm, i|
  if elm == P
    a = i
    break
  end
end

Q.sort.permutation.to_a.each_with_index do |elm, i|
  if elm == Q
    b = i
    break
  end
end

puts (a - b).abs