
N = gets.to_i
S = gets.chomp

a = %W(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
 
ans = ""
len = S.length - 1
s = S.split("")
for i in 0..len do
  ans = ans + a[(a.index(s[i]) + N) % 26]
end
puts ans