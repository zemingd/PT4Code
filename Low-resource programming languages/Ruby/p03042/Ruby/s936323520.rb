def check(f, e)
  yymm_f = mmyy_f = true
  if f.to_i <= 0 || f.to_i > 12
    mmyy_f = false
  end
  if e.to_i <= 0 || e.to_i > 12
    yymm_f = false
  end  
  if yymm_f && mmyy_f
    puts "AMBIGUOUS"
  elsif yymm_f
    puts "YYMM"
  elsif mmyy_f
    puts "MMYY"
  else
    puts "NA"
  end
end

a = gets
f = a[0,2]
e = a[2,2]
check(f, e)