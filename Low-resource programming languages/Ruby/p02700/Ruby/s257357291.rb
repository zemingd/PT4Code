a, b, c, d = gets.split(" ").map(&:to_i)
cnt = 0

while true
  cnt += 1
  if cnt.odd?
    c -= b
    if c <= 0
      puts "Yes"
      exit
    end
  else
    a -= d
    if a <= 0
      puts "No"
      exit
    end
  end
end