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

s=""
while true
  s_input=gets
  break if s_input.nil?
  break if s_input.chomp==""
  s_input=s_input.chomp.split("")
  s+=s_input.join("").downcase
  #break if s_input[s_input.size-1]=="."
end
alphabet=("a".."z").to_a
26.times do|i|
  puts "#{alphabet[i]} : #{s.count(alphabet[i])}"
end
