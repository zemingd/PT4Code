s=gets
a=s[0,2].to_i
b=s[2,2].to_i



if(0<a && a<=12 && 0<b && b<=12 )
    print "AMBIGUOUS"
elsif(0<a && a<=12 && 0<b )
    print "MMYY"
elsif(0<b && b<=12 && 0<a )
    print "MMYY"
else
    print "NA"
end