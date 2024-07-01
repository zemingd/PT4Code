io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(//).chunk_while{|a,b|a==b}.to_a
size=s.size
def calc(ss,ch) # chにするために必要な数
    ss.select{|ar|ar[0]!=ch}.inject(0){|s,ar|s+ar.size}
end
mid=(0...(size-1)).map do |i|
  calc(s[0..i],".")+calc(s[(i+1)..-1],"#")
end
puts [calc(s,"."),mid,calc(s,"#")].flatten.min
