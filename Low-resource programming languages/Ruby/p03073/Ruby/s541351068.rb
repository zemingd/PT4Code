s = gets.chomp.split("")
bw = Array.new(2, 0)
i = 0
s.each do |c|
  if i % 2 == 0
    if c == "0"
      bw[1] += 1
    else
      bw[0] += 1
    end
  else
    if c == "0"
      bw[0] += 1
    else
      bw[1] += 1
    end
  end
  i += 1
end
bw.sort!
puts bw[0]
