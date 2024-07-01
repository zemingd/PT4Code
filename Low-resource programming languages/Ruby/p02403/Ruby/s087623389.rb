while(1)
h,w=gets.chomp.split(" ").map(&:to_i)
if(w==0&&h==0)
 break
end
j=0
while(j<h)
 i=0
 while(i<w)
  print"#"
  i=i+1
 end
 print"\n"
 j=j+1
end
 print"\n"
end

