h, w = gets.split.map(&:to_i)
s = h.times.map { "." + gets.chomp + "." }
s.unshift("." * (w+2))
s.push("." * (w+2))
ans = "Yes"
for i in 1..h do
  for j in 1..w do
    if s[i][j] == "#"
      if s[i-1][j] != "#" && s[i+1][j] != "#" &&
         s[i][j-1] != "#" && s[i][j+1] != "#"
        ans = "No"
        break
      end
    end
  end
  break if ans == "No"
end
puts ans
