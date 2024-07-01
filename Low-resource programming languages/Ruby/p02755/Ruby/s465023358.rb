a,b=gets.split.map(&:to_i)
amin=(a/0.08).ceil
bmin=(b/0.1).ceil
if amin<bmin
  if (bmin*0.08).floor==a
    puts bmin
  else
    puts -1
  end
else
  if (amin*0.1).floor==b
    puts amin
  else
    puts -1
  end
end
