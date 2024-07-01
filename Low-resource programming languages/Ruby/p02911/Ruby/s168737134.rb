n,k,q = gets.chomp.split.collect{ |item| item.to_i}
alist = []
n.times do |ni|
  alist[ni] = 0
end

q.times do |qi|
  alist[(gets.chomp.to_i)-1] += 1
end
base = k - q
n.times do |ni|
  if((base + alist[ni])>=1)
    puts "Yes"
  else
    puts "No"
  end
end
