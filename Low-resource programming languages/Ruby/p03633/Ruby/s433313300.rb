def gcd(a,b)
  return b if a%b==0
  return gcd(b, a%b)
end

def lcs(a,b)
  a*b/gcd(a,b)
end

N = readline.strip.to_i
T = readlines.map(&:strip).map(&:to_i)

result=T[0]

T.each do|t|
  result = lcs(result,t)
end

p result


