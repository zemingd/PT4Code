a = gets
l = gets.split.map(&:to_i)

flag = true
l.each do |s|
  if s%2==0 && s%3>0 && s%5>0
    flag = false
  end
end

puts flag ? "APPROVED" : "DENIED"
