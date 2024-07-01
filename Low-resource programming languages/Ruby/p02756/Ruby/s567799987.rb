s = gets.chomp
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
    if (leftee && !reversed) || (!leftee && reversed)
      left += c
    else
      right += c
    end
  end
}
if reversed
  s.reverse!
  left,right = [right,left]
end
puts left.reverse + s + right
