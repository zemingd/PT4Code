while true do
  input = STDIN.gets
  x_y = input.split(" ")
  x = x_y[0].to_i
  y = x_y[1].to_i
  if (x == 0) && (y == 0)
    break
  end
  
  if x < y then
    print x.to_s + " " + y.to_s + "\n"
  else
    print y.to_s + " " + x.to_s + "\n"
  end
end