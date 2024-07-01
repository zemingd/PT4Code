N = gets.to_i
A = gets.split.map(&:to_i)

flag = true
A.each do |a|
  if a % 2 == 0
    if a % 3 != 0 && a % 5 != 0
      flag = false
    end
  end
end

if flag
  puts "APPROVED"
else
  puts "DENIED"
end
