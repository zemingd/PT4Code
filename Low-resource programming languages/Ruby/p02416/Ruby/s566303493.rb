while (x=gets)!="0\n"
s=0
x.length.times{|i|s+=x[i].to_i}
puts s
end