n = gets.to_i
a = gets.split.map(&:to_i)
ok = true
a.each do |v|
  if v % 2 == 0
    ok = false if v % 3 != 0 && v % 5 != 0
  end
end
puts ok ? "APPROVED" : "DENIED"
