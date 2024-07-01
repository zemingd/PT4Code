l,r = gets.chomp.split(" ").map(&:to_i)

if  r - l > 2019
  puts 0
else
  min = 2020
  for i in l..r-1
    for j in i+1..r
      min = min < (i%2019) * (j%2019) % 2019 ? min : (i%2019) * (j%2019) % 2019
    end
  end
  puts min
end