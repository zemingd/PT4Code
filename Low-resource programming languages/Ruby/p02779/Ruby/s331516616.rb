
n = gets.to_i
a = gets.split.map(&:to_i)
b = []

i = 0
j = 0
ans = "YES"

while i < n
  b = a.find_all{|n| n == a[i]}

  if b.length != 1
    ans = "NO"
    break
  end
  i+=1
end

puts ans