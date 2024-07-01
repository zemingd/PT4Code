#input of int(split by space)
def get_i()
  return gets.chomp.split(" ").map(&:to_i)
end
#input of float(split by space)
def get_f()
  return gets.chomp.split(" ").map(&:to_f)
end
#input of string(split by space)
def get()
  return gets.chomp.split(" ")
end
#input of string(split per one character)
def get_nsp()
  return gets.chomp.split("")
end
#yes or no decision
def yn_judge(bool,y="Yes",n="No")
  return bool ? y : n 
end
#create of array
def array(size1,init=nil,size2=-1)
  if size2==-1
    return Array.new(size1){init}
  else
    return Array.new(size2){Array.new(size1){init}}
  end
end

def max(a,b)
    return a>b ? a : b
end

def min(a,b)
    return a>b ? b : a
end

INF=Float::INFINITY

W,H,x,y=get_f
ans1=min((W-x)*H,W*H-(W-x)*H)
ans2=min((H-y)*W,W*H-(H-y)*W)
if (x.zero? and y==H) or (x.zero? and y.zero?) or (x==W and y.zero?) or (x==W and y==H)
    puts [W*H/2.0,"0"].join(" ")
elsif ans1==ans2
    if x/y==W/H
      puts [W*H/2.0,"0"].join(" ")
    else
      puts [ans1.to_f,"1"].join(" ")
    end
else
    if x/y==W/H
      puts [W*H/2.0,"0"].join(" ")
    else
      puts [max(ans1,ans2).to_f,"0"].join(" ")
    end
end