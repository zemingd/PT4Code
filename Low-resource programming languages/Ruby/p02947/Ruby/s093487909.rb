N = gets.to_i
S = N.times.map{gets.chomp}

S.map! do |s|
  s.chars.sort.join
end

uniq_S = S.uniq
hash = {}

uniq_S.each do |s|
  hash[s] = 0
end

S.each do |s|
  hash[s] += 1
end

ans = 0

def factorial(number)
  (1..number).inject(1,:*)
end

fac = {}

hash.each do |k,v|
  next if v <= 1

  fac[v] = factorial(v) unless fac[v]
  fac[v-2] = factorial(v-2) unless fac[v-2]

  ans += fac[v] / (2 * fac[v-2])
end

puts ans