N = gets.strip.to_i
A = gets.split.map(&:to_i)

a = A.sort
B = a.zip([nil] + a).map{|b,c| c.nil? ? b : b - c}

@m = {}
def gcd(i,j)
  if !@m[i] || !@m[i][j]
    @m[i] ||= {}
    @m[i][j] = i.gcd(j)
  end
  return @m[i][j]
end

def ps(a, i)
  if i == 1
    g = gcd(a[0], a[1])
    return g, g == 1
  end
  tg1, pw1 = ps(a, i-1)
  pw = pw1 && (0..(i-1)).all?{|j| gcd(a[j], a[i]) == 1}
  tg = !pw && gcd(tg1, a[i])
  return tg, pw
end

tg, pw = ps(B, N-1)

if pw
  puts "pairwise coprime"
elsif tg == 1
  puts "setwise coprime"
else
  puts "not coprime"
end
