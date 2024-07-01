def solve
  a, b, c, d = gets.split.map!(&:to_i)
  flag = true
  while a > 0 || c > 0 do
    if flag == true
      c -= b
      flag = false
    else
      a -= d
      flag = true
    end
  end

  if flag == true
    print "Yes"
  else
    print "No"
  end
end
solve
