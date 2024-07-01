n,m  = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
c =[]
count=0
if n ==1
  puts a[0]
else
    (n-1).times do |j|
    b = gets.chomp.split(' ').drop(1).map(&:to_i)
      c.push(b)
    end
a.shift.times do |i|
  flag = true
  (n-1).times do |j|
  	if c[j].include?(a[i])==false
      flag = false
      break
    end
  end 
  count+= 1 if flag
end
puts count
end