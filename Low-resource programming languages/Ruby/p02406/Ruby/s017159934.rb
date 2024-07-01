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
        x=i/100
        if (i-x*100)/10==3 then
          print " #{i}"
        else
          if i-300>0 && i-300<100 then
            print " #{i}"
          else
            if i-3000>0 && i-3000<1000 then
              print " #{i}"
            end
          end
        end
      end
    end
  end
end
print "\n"