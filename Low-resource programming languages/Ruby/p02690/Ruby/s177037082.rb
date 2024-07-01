x = gets.to_i

a = 0
while true do
  (-a..a).each do |b|
    if a ** 5 - (b**5) == x
      puts [a, b].join(" ")
      exit
    end
  end
  a += 1
end
