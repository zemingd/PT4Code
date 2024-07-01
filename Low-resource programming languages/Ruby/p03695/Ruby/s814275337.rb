n=gets.to_i
a=gets.split.map(&:to_i)

min = 0
max = 0
bit = Array.new(9, 0)

n.times do |i|
  if a[i]/400 < 9
    bit[a[i]/400] += 1
  else
    bit[8]+=1
  end
  
end

8.times do |i|
  min+=1 if bit[i]>0
end

min = 1 if min == 0 && bit[8] > 0

max = [min + bit[8], n].min

puts "#{min} #{max}"
