io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(//).chunk_while{|a,b|a==b}.to_a
size=s.size
def cnt_ar(ss,ch)
  ss.select{|ar|ar[0]==ch}.map{|ar|p ar;ar.size}
end
white=cnt_ar(s,".") #今の色の数
all_black_cnt=white.inject(0){|s,i|s+i}  #all blackにするために動かした数
ans=move=all_black_cnt
s.each do |ar|
  if ar[0]=="#"
    move+=ar.size
  else
    move-=ar.size
  end
  ans=[ans,move].min
end
puts ans
