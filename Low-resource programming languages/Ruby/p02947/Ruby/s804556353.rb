
n = gets.to_i
a = []

n.times do 
  a << gets.chomp.chars.sort.join("")
end

count = Hash.new(0)
a.each do |elem|
  count[elem] += 1
end

def combination(n, r)
  r = [r, n - r].min
  return n if r == 1
  return 1 if r == 0
  permutation(n, r) / factorial(r)
end
cnt = 0
count.values.each do |i|
    if i >= 2
        cnt += combination(i, 2)
    end
end
p cnt