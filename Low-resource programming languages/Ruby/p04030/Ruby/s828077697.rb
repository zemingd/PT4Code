
def Get_i() #空白区切の入力を数値(整数)の配列で返す
  return gets.chomp.split(" ").map(&:to_i)
end
def Get_f() #空白区切の入力を数値(実数)の配列で返す
  return gets.chomp.split(" ").map(&:to_f)
end
def Get() #空白区切の入力を文字列の配列で返す
  return gets.chomp.split(" ")
end
def Get_nsp() #入力されたものを一文字ずつに区切った文字列の配列で返す
  return gets.chomp.split("")
end
s=Get_nsp()

ans=[]
s.each do|c|
  case c
    when "0" then
      ans.push("0")
    when "1" then
      ans.push("1")
    when "B" then
      ans.pop() unless ans.size.zero?
  end
end
puts ans.join("")