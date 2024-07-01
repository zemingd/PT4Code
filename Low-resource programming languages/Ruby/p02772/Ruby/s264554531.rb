n = gets.to_i
a = gets.split.map(&:to_i)
flag = 1
a.each do |an|
  if an % 2 == 0
    if an % 3 != 0 && an % 5 != 0
      flag = 0
      break
    end
  end
end
(flag == 1) ? (puts "APPROVED"):(puts "DENIED")
