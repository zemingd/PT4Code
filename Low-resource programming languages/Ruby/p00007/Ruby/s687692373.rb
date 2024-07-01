money = 100000
gets.chomp.to_i.times do
  money = (money * 1.05).to_i

  unless money % 1000 == 0
    money = money - (money % 1000) + 1000
  end
end

puts money