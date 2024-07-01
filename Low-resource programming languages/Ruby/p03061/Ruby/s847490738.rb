##templete
n = gets.chomp.to_i
a = gets.chomp.split(" ").map { |e| e.to_i }.sort

def div_array(x, res)
  index = 0
  num = 100000
  num.times do |i|
    if x % (i+1) == 0
      res[index] = i+1
      res[index+1] = x/(i+1)
      index += 2
    end
  end
  res.sort.uniq
end

lst0 = div_array(a[0], [])
lst1 = div_array(a[1], [])
lst = (lst0 + lst1).uniq

hash = {}

for x in lst do
  hash[x] = 0
end

for num in a do
  for x in lst do
    if num % x == 0
      hash[x] += 1
    end
  end
end

ans = 0

for i in lst.reverse do
  if hash[i] == n-1 || hash[i] == n
    puts i
    exit 0
  end
end
