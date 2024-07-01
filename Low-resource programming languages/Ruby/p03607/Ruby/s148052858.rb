n = gets.chop.to_i

a = Hash.new(0)

ans = 0

n.times do |i|
  num = gets.chop.to_i
  a[num] += 1
end

a.each do |key, value|
  unless value % 2 == 0
    ans +=1
  end
end

p ans