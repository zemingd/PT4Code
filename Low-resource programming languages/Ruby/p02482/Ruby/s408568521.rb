b=gets().split.map(&:to_i)
print b[0]
if b[0]>b[1]
print">"
end
if b[0]<b[1]
print"<"
end
if b[0]==b[1]
print"=="
end
puts b[1]