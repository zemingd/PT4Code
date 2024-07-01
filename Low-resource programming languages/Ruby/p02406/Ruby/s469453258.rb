n=gets.chomp.to_i
for i in 1..n do
  if i%3==0 then
    print " #{i}"
  else
    if i%10==3 then
      print " #{i}"
    else
      if i/10==3 then
        print " #{i}"
      else
        if i/100==30 then
          print " #{i}"
        end
      end
    end
  end
end
print "\n"