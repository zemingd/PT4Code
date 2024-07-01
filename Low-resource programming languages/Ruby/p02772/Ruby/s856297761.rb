N = gets.to_i
A = gets.chomp.split.map(&:to_i)

ans = false
A.each do |i|
  if i.odd? # 奇数か？
    if !(i % 3 == 0 && i % 5 == 0) 
      ans = true
    end
  end
end

puts ans ? "APPROVED" : "DENIED"