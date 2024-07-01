while str = STDIN.gets
  n = str.split(" ")
  a = n[0].to_i
  b = n[1].to_i
  c = n[2].to_i
  if a < b && b < c
    print "Yes"
  else
    print "No"
  end
end
