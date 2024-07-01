s = gets.chomp
q = gets.to_i
ir = false
tl = ""
hd = ""
q.times {
  q = gets.chomp.split(" ")
  if q[0] == "1"
    ir = !ir
  else
    if q[1] == "1"
      if ir == false
        hd = q[2] + hd
      else
        tl = tl + q[2]
      end
    else
      if ir == false
        tl = tl + q[2]
      else
        hd = q[2] + hd
      end
    end
  end
}

s = hd + s + tl
puts ir == false ? s : s.reverse
