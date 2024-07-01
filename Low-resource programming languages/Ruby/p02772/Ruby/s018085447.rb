n = gets.to_i
x = gets.to_s
x = x.split(" ").map(&:to_i)
ans = true
x.each do |x|
  if (x % 2 == 0) then
    if (!(x % 3 == 0) && !(x % 5 == 0)) then
      ans = false
    end
  end
end

if ans then
  puts "APPROVED"
else
  puts "DENIED"
end
