a,b,c=gets.chop.split.map(&:to_i)

if a>b then
    a,b=b,a
end
if b>c then
    b,c=c,b
end
if a>b then
    a,b=b,a
end
print "#{a} #{b} #{c}\n"
