# Your code here!


# スペース区切りの整数の入力
a,b,c=gets.chomp.split(" ").map(&:to_i);

d = (a - b).abs
e = (a - c).abs
f = (b - c).abs

arr = [d,e,f]
arr.sort!
    
    
# 出力
puts arr[0] + arr[1]