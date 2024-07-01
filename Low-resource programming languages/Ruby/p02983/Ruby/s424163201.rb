L, R = gets.split.map(&:to_i)

min_mod = 2019

for i in L..R-1
  for j in i+1..R
    if min_mod > i*j % 2019
      min_mod = i*j % 2019
    end
    if min_mod == 0
      puts 0
      exit
    end
  end
end

puts min_mod