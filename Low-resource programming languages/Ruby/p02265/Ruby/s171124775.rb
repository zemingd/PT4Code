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
def array(size1,init=nil,size2=-1) #size2に二次元配列時の最初の要素数、size1に次の配列の大きさ、initに初期値を投げることでその配列を返す
  if size2==-1
    return Array.new(size1){init}
  else
    return Array.new(size2){Array.new(size1){init}}
  end
end

n=gets.to_i
ans=[]
n.times  do
  cmd=get
  case cmd[0]
  when "insert" then
      ans.unshift(cmd[1].to_i)
  when "delete" then
      ans.delete_at(ans.index(cmd[1].to_i)) if ans!=[] and not ans.index(cmd[1].to_i).nil?
  when "deleteFirst" then
      ans.shift unless ans==[]
  when "deleteLast" then
      ans.pop unless ans==[]
  end
end
puts ans.join(" ") if ans!=[]
