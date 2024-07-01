h, n = gets.split(" ").map(&:to_i)
ls = []

ls = gets.split(" ").map(&:to_i)

if ls.inject(:+) >= h
  print("Yes\n")
else
  print("No\n")
end
