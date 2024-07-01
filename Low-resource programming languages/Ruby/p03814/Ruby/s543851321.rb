S = gets.chomp.split('')
high_count = 0
count = 0
flg = false
for s in S do
  if s == "A"
    flg = true
  elsif s == "Z"
    flg = false
    high_count = count if count > high_count
    count = 0
  end
  count += 1 if flg
end
puts (count+1)