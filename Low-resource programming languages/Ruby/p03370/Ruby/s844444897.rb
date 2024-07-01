n,x = gets.split.map(&:to_i)
i_n = n.times.map{ gets.to_i}
counter = 0

total = 0
i_n.each{|n| total += n}
rmd = x - total


mindonut = i_n.min

while rmd >= mindonut
  rmd = rmd - mindonut
  counter += 1
end

puts counter + n