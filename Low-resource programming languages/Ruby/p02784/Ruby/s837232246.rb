h,n = gets.split(" ").map(&:to_i)
an = gets.split.map(&:to_i)

if an.length == n && an.inject(&:+) >=h
  p "Yes"
else
  p "No"
end