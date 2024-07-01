h,n = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
answer = "No"
for i in 0..n-1 do
  h -= a[i]
  if h<=0 then
    answer = "Yes"
    break
  end
end
print answer