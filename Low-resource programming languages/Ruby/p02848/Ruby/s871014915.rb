a = [
  "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
  "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
]
n = gets.chomp!.to_i
s = gets.chomp!.to_s
ls = s.split("")

ans = []

ls.each do |e|
  i = a.index(e)
  if i + n >= 26
    i = i - 26
  end
  #p i
  ans << a[i+n]
end

p ans.join