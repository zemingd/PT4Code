list = gets.chomp.split(" ").map{|aa| aa.to_i}
n = list[0]
q = list[1]
k = list[2]

list_a = []
for i in 1..k
  a = gets.chomp.to_i
  list_a.push(a)
end

if q - k > 0
  n.times{puts "Yes"}
  exit
else
  result = list_a.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h
end

for i in 1..n
  unless result.include?(i)
    result.store(i, 0)
  end
end

for i in 1..n
  if result[i] + q - k >0
    puts "Yes"
  else
    puts "No"
  end
end