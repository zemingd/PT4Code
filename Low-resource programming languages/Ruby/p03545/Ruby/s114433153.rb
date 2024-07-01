a = []
a = gets.chomp.split("")
bit = []
cnt=0
c = []
for i in 0..(2**(a.length-1))-1
  c = a.clone
  #puts c.join(" ")
  b = i.to_s(2)
  bit = b.split("")
  while bit.length < a.length
    bit.insert(0,0)
  end
#puts bit.join(" ")
  for j in 0..bit.length-2   
   if bit[bit.length-1-j] == "1"
     c.insert(bit.length-1-j,"+") #後ろからやらないと挿入位置がずれる
   else
     c.insert(bit.length-1-j,"-") #後ろからやらないと挿入位置がずれる
   end
  end
  #puts c.join(" ")
  #puts eval(c.join(""))
  if eval(c.join("")) == 7
    puts "#{c.join("")}=7"
    exit
end
end
#puts cnt