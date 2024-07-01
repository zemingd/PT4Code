n = gets.to_i

a = gets.split(" ").map(&:to_i)

for  i in 0..n-3
  for j in i+2..n-1
    if a[i]^a[j] == a[i+1]
      puts "Yes"
      exit
    end
  end
end
puts "No"
