S = gets.to_s.split("")

h = S.slice(0,2)
t = S.slice(2,2)

h_ = (h[0].to_s + h[1].to_s).to_i
t_ = (t[0].to_s + t[1].to_s).to_i

if h_ > 12 || h_ == 0

  if t_ > 12 || t_ == 0
    puts "NA"
  else
    puts "YYMM"
  end

else

  if t_ > 12 || t_ == 0
    puts "MMYY"
  else
    puts "AMBIGUOUS"
  end


end


