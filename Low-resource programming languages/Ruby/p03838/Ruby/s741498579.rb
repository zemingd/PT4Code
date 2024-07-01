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

x,y=get_i
if x==y
    puts 0
elsif x.abs==y.abs
    puts 1
else
    if x>0 and x<y
        puts y-x
    elsif x<0 and x>y
        puts (y-x).abs+2
    elsif y>0 and x>y
        puts x-y+1
    elsif x.abs>y.abs
        puts (x.abs-y.abs)+1
    elsif y.abs<x.abs
        puts (y.abs-x.abs)+1
    end
end