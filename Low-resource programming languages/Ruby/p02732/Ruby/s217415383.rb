N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

table = {}
cmemo = {}

$memo = {}
def fact(n)
  return $memo[n] if $memo[n] != nil
  result = if (n <= 1) then 1 else fact(n - 1) * n end
  $memo[n] = result
  $memo[n]
end

def c(n, r)
  (fact(n) / (fact(r) * fact(n - r))).to_i
end

A.each do |a|
  table[a] = 0 if table[a] == nil
  table[a] += 1
end

total = 0
table.each do |k, v|
  cmemo[k] = [c(v, 2), c(v-1,2)]
  total += cmemo[k][0]
end

A.each do |a|
  result = total
  result -= cmemo[a][0]
  result += cmemo[a][1]
  puts result
end