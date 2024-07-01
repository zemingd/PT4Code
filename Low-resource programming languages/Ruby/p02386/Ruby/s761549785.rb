def get_i() #空白区切の入力を数値(整数)の配列で返す
  return gets.chomp.split(" ").map(&:to_i)
end
def get_f() #空白区切の入力を数値(実数)の配列で返す
  return gets.chomp.split(" ").map(&:to_f)
end
def get() #空白区切の入力を文字列の配列で返す
  return gets.chomp.split(" ")
end
def get_nsp() #入力されたものを一文字ずつに区切った文字列の配列で返す
  return gets.chomp.split("")
end
def yn_judge(bool,y="Yes",n="No") #boolに真偽を投げることで、trueならy、falseならnの値を出力する
  return bool ? y : n 
end
def array(size,n=1,init=nil) #nに配列の次元数、sizeに配列の大きさ、initに初期値を投げることでその配列を返す
  if n==1
    return Array.new(size){init}
  else
    return Array.new(n).map{Array.new(size){init}}
  end
end

class Dice
  attr_accessor:node,:top,:s,:e,:num
  def initialize(arr)
    @node=Array.new(6){|i| i+1}
    @num=arr
    @top=1
    @s=2
    @e=3
  end

  def reverse_num(x)
    return 7-x
  end

  def S()
    top=@top
    s=@s
    e=@e
    @top=reverse_num(s)
    @s=top
  end

  def E()
    top=@top
    s=@s
    e=@e
    @top=reverse_num(e)
    @e=top
  end

  def W()
    top=@top
    s=@s
    e=@e
    @top=e
    @e=reverse_num(top)
  end

  def N()
    top=@top
    s=@s
    e=@e
    @top=s
    @s=reverse_num(top)
  end
end

n=gets.to_i
dices=Array.new(n)
n.times do|i|
  a=get_i
  dices[i]=Dice.new(a)
end
flag=false
(n-1).times do|i|
  dice1=dices[i]
  (i+1).upto(n-1) do|j|
    dice2=dices[j] 
    x=dice1.num.sort
    y=dice2.num.sort
    f=false
    6.times do|k|
      f=true if x[i]!=y[i]
    end
    if f
      next
    end
    4.times do
      4.times do
        break if dice1.num[dice1.s-1]==dice2.num[dice2.s-1]
        dice2.S 
      end
      4.times do
        break if dice1.num[dice1.top-1]==dice2.num[dice2.top-1]
        dice2.W
      end

      break if dice1.num[dice1.s-1]==dice2.num[dice2.s-1] and dice1.num[dice1.top-1]==dice2.num[dice2.top-1]
      dice2.S
      dice2.W
    end

    if ((dice1.num[dice1.s-1]==dice2.num[dice2.s-1]) and (dice1.num[dice1.top-1]==dice2.num[dice2.top-1]) and (dice1.num[dice1.e-1]==dice2.num[dice2.e-1]) and (dice1.num[dice1.reverse_num(dice1.s)-1]==dice2.num[dice2.reverse_num(dice2.s)-1]) and (dice1.num[dice1.reverse_num(dice1.top)-1]==dice2.num[dice2.reverse_num(dice2.top)-1]) and (dice1.num[dice1.reverse_num(dice1.e)-1]==dice2.num[dice2.reverse_num(dice2.e)-1]))
      flag=true
      break
    end
  end
  if flag
    break
  end
end
if flag
  puts "No"
else
  puts "Yes"
end
