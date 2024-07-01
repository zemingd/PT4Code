a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
flg = 0
sarr = s.chomp.split("")
if sarr[a] == "-" && s.length == a + b + 1
  s.length.times do |i|
    if i != a
      if sarr[i] == "-" then
        flg = 1
      end
    else
      flg = 1
    end
  end
else
  flg = 1
end

if flg == 1 then
  print("No\n")
else
  print("Yes\n")
end