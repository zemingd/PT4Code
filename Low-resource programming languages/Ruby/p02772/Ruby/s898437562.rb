N = gets.to_i
A = gets.chomp.split.map(&:to_i)

ans = true
A.each do |i|
  if i.even? # 偶数か？
    if !(i % 3 == 0 || i % 5 == 0) 
      ans = false
    end
  end
end

puts ans ? "APPROVED" : "DENIED"