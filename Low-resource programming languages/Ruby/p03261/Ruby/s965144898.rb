n=gets.chomp.to_i

a=Array.new(n)

n.times do |i|
  a[i] = gets.chomp.to_s
end

a=a.uniq

if a.length != n
  puts "No"
  exit
end

str = a[0][a[0].length-1]

for i in 1..n-1 do
  if a[i][0] != str
    puts "No"
    exit
  end
  str = a[i][a[i].length-1]
end

puts "Yes"