input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
&#160;&#160;
tmp=0;
&#160;&#160;
if a>b
&#160;&#160;tmp=a
&#160;&#160;a=b
&#160;&#160;b=tmp
end
if b>c
&#160;&#160;tmp=b
&#160;&#160;b=c
&#160;&#160;c=tmp
end
if a>b
&#160;&#160;&#160;&#160;tmp=a
&#160;&#160;&#160;&#160;a=b
&#160;&#160;&#160;&#160;b=tmp
end
puts "#{a} #{b} #{c}"