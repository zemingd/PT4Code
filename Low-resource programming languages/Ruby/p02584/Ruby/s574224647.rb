io = DATA.eof? ? STDIN : DATA
x,k,d=io.gets.split.map(&:to_i)
xx=x.abs
if xx==k*d
  puts 0
elsif xx>k*d
  puts x-k*d
else
  if x%d==0
    cnt=x/d
    if cnt.even? && k.even? ||
      cnt.odd? && k.odd?
      puts 0
    else
      puts d
    end 
  else
    ct1=(xx.to_f/d).floor
    ct2=(xx.to_f/d).ceil
    if (ct1).even? && k.even? ||
       (ct1).odd? && k.odd?
        puts x-ct1*d
      else
        puts ct2*d-x
      end
    end
  end
end
__END__
