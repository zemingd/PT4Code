n=gets.to_i
t=[]
n.times do
  t<<gets.to_i
end
a=0
flg=0
t.sort!{|b,c| c<=>b}
while flg==0 do
  a += 1
  t.each do |i|
    if a*t[0]%i != 0
      flg=0
      break
    else
      flg=1
    end
  end
end
puts a*t[0]
