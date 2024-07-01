N = gets.to_i
a = gets.split().map(&:to_i)

box = []

N.times do 
  box.push(0)
end

sum = 0
num = 0
count = 0

(N-1).downto(0) do |i|
  num = i + 1
  while N >= num
    sum += box[num-1]
    num += i + 1
  end
  unless a[i] == sum % 2 
    box[i] = 1 
    count += 1
  end
  sum = 0
end

puts count
N.times do |i|
  print "#{i+1} " if box[i] == 1
end