ns = gets.chomp.split("").map(&:to_i)
ans = ""
ns.each do |n|
  if n == 1
    ans << "9"
  else
    ans << "1"
  end
end
puts ans