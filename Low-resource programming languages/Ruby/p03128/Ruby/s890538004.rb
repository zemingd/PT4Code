N_MATCH, NUMBERS = gets.split(' ').map(&:to_i)
USABLE = gets.split(' ').map(&:to_i).sort.reverse
TABLE = [1000,2,5,5,4,5,6,3,7,6]

PRIORITY = USABLE.reduce({}){ |z, x| (z[TABLE[x]] ||= []) << x; z }.sort.to_h

MEMO = {}
MEMO2 = {}
@max_str = ""
def dp(n)
  return 0 if n == 0
  return -10000000 if n < 0
  return MEMO[n] if MEMO[n]

  max = -1
  max_digit = 0
  USABLE.each do |v|
    res = dp(n - TABLE[v]) + 1
    if res > max
      max = res
      max_digit = v
    end
  end

  MEMO[n] = max
  MEMO2[n] = max_digit
  max
end

dp(N_MATCH)
num = N_MATCH
res = ""
while num > 0
  d = MEMO2[num]
  res += d.to_s
  num -= TABLE[d]
end
puts res
