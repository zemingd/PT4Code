a, b, c, d = gets.split(" ").map(&:to_i)
flag = true

while a == true
  if flag = true
    c -= b
    if c < 1
      puts "Yes"
      exit
    end
  else
    a -= d
    if a < 1
      puts "No"
      exit
    end
  end
end