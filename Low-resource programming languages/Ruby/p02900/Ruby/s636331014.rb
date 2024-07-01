require 'prime'
a,b = gets.split.map(&:to_i)
i = 1
mx = ([a,b].max)**0.5
diva = []
divb = []
while i <= mx
  if a % i == 0 && b % i == 0
    diva << i
    diva << a/i if a & a/i == 0 && b % a/i == 0
    divb << i
    divb << b/i if a & b/i == 0 && b % b/i == 0
  end
  i += 1
end
div = (diva & divb).uniq
ans = 0
div.each do |v|
  ans += 1 if v.prime?
end
p ans+1