n = gets.to_i
num = 1
n.times do
  if num % 3 == 0
    print " " + num.to_s
  elsif num.to_s.index("3") != nil
    print " " + num.to_s
  end
  num += 1
end

