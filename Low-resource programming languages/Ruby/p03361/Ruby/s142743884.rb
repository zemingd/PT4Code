h,w=gets.split.map &:to_i
d=$<.map{|l|l.chomp.chars}
a="Yes"
for p in 0...h
for q in 0...w
if  d[p][q]=="#"  &&  (p==h-1 || d[p+1][q]==".")  && d[p][q+1]=="."  && (p==0  || d[p-1][q]==".")  && (q==0 || d[p][q-1]==".")
a="No"
break
end
end
break if a=="No"
end
print a