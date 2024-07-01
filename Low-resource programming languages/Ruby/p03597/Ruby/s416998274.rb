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

n=gets.to_i
a=gets.to_i

puts n**2-a
