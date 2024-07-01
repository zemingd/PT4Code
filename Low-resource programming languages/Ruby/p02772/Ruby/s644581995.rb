N = gets.chomp
A = gets.chomp.split(' ').map(&:to_i)
ans = "DENIED"
for a in A do
  if a % 2 != 0
    if a % 3 != 0 && a % 5 != 0
      ans = "APPROVED"
    end
  end
end
puts ans