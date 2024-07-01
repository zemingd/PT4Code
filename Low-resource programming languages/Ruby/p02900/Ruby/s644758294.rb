require 'prime'
a,b = gets.split.map(&:to_i)
i = 1
mx = ([a,b].max)**0.5
div = []
while i <= mx
  if a % i == 0 && b % i == 0
    div << i
    div << a/i if a % a/i == 0 && b % a/i == 0
    div << b/i if a % b/i == 0 && b % b/i == 0
  end
  i += 1
end
ans = 0
div.each do |v|
  ans += 1 if v.prime?
end
p ans+1