require 'pp'

X,Y,Z,K = readline.chomp.split.map(&:to_i)
A = readline.chomp.split.map(&:to_i).sort!.reverse
B = readline.chomp.split.map(&:to_i).sort!.reverse
C = readline.chomp.split.map(&:to_i).sort!.reverse

result = Array.new(K,0)

$memo = {}
$heads = {}
def calc(a,b,c)
  key = a*1_000_000 + b*1000 + c
  return $memo[key] if $memo[key]
  x = A[a]+B[b]+C[c]
  $memo[key] = x
  x
end

def done(a,b,c)
  key = a*1_000_000 + b*1000 + c
  $heads.has_key?(key)
end

def set_heads(a,b,c, x)
  key = a*1_000_000 + b*1000 + c
  $heads[key] = x
end

ma = 0
mb = 0
mc = 0
set_heads(ma,mb,mc,true)
current = calc(0,0,0)

K.times do |k|
  puts current
  max = 0
  # pp current, heads
  $heads.each do |abc,b|
    next if b == false
    a,b,c = abc/1000_000, (abc/1000)%1000, abc%1000
    if a + 1 < X and !done(a+1,b,c)
      x = calc(a+1,b,c)
      if x > max and x <= current
        max = x
        ma = a+1; mb = b; mc = c
      end
    end
    if b + 1 < Y and !done(a,b+1,c)
      x = calc(a,b+1,c)
      if x > max and x <= current
        max = x
        ma = a; mb = b+1; mc = c
      end
    end
    if c + 1 < Z and !done(a,b,c+1)
      x = calc(a,b,c+1)
      if x > max and x <= current
        max = x
        ma = a; mb = b; mc = c+1
      end
    end
  end
  current = max
  set_heads(ma,mb,mc,true)
  if ma-1>=0 and mb-1>=0 and mc-1>=0
    set_heads(ma-1,mb-1,mc-1,false)
  end
end

