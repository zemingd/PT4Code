n=gets.chomp.to_i
a=gets.split.map(&:to_i)

b=[]
n.times do |i|
  if (i+n)%2==0
    b.push(a[i])
  else
    b.unshift(a[i])
  end
end

puts b.join(' ')

# 6 4 2 1 3 5
# 7 5 3 1 2 4 6