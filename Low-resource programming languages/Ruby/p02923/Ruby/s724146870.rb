=begin
a = gets.split("").map{|x| x.to_s}
b = gets.split("").map{|x| x.to_s}
count = 0
3.times do |i|
  if a[i] == b[i]
    count += 1
  end
end

p count
=end

=begin
a = gets.split(" ").map{|x| x.to_i}
if a[1] == 1
  p 0
  exit()
end
a[1] -= a[0]
ans = 1
while true
  break if (a[1] <= 0)
  a[1] -= a[0] - 1
  ans += 1
end
p ans
=end

n = gets.to_i
a = gets.split(" ").map{|x| x.to_i}
max = 0

count = 0

(n - 1).times do |i|
  if a[i] >= a[i + 1]
    puts "#{a[i]} : #{a[i + 1]}"
    count += 1
  else
    if(max < count)
      max = count
    end
    count = 0
  end
end
if(max < count)
  max = count
end

p max
