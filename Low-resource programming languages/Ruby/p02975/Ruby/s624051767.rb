n = gets.to_i

a = gets.split(" ").map(&:to_i).sort


for i in 0..n-1
  a[i] = a[i].to_s(2)
end

if a[n-1].to_i - a[n-2].to_i != a[0].to_i
  puts "No"
    exit
end

if a[n-1].to_i - a[0].to_i != a[1].to_i
  puts "No"
    exit
end



for j in 0..n-3
  if a[j].to_i + a[j+1].to_i != a[j+2].to_i
    puts "No"
    exit
  end
end
puts "Yes"