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
    k1=(xx.to_f/d).floor
    k2=(xx.to_f/d).ceil
    if k.even?
      puts (x-k1*d).abs
    else
      puts (x-k2*d).abs
    end
  end
end
__END__
