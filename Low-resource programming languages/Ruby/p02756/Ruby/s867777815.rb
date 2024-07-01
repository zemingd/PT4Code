S = gets.chomp
Q = gets.to_i
left = ""
right = ""
reversed = false
Q.times {
  t,f,c = gets.split
  if t == "1"
    reversed = !reversed
  else
    leftee = f == "1"
    if leftee || reversed
      left += c
    else
      right += c
    end
  end
}
ans = left.reverse + S + right
if reversed
  ans = ans.reverse
end
puts ans
