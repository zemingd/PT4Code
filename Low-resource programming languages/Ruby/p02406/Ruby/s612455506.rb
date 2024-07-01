n = gets.to_i
num = 1
n.times do
  if num % 3 == 0 || num.to_s.include?("3")
    print num.to_s + " "
  end
  num += 1
end

