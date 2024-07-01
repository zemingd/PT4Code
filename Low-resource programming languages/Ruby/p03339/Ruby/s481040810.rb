# "ヒント: 累積和"ってのを見てしまったのでもうわかるしかなくなってしまった
# たぶん右側が西、左側が東
# 選んだときに自分より右側にいて西を向いてるやつの数+左側にいて東を向いているやつの数
# 左端からみていって自分がWだったら[i+1]=1+[i]（右側にあふれる注意）ちがったら[i]
# 右端からみていって自分がEだったら[i-1]=1+[i]（左側にあふれる注意）（reverseしろや）ちがったら[i]
n = gets.chomp.to_i
s = gets.chomp.chars
w_arr = Array.new(n, 0)
e_arr = Array.new(n, 0)
1.upto(n) do |i|
  break if i==n
  if s[i-1] == "W"
    e_arr[i] = e_arr[i-1]+1
  else
    e_arr[i] = e_arr[i-1]
  end
end
(n-1).downto(0) do |i|
  break if i==0
  if s[i] == "E"
    w_arr[i-1] = w_arr[i]+1
  else
    w_arr[i-1] = w_arr[i]
  end
end
# p w_arr
# p e_arr
ans = 10**8
n.times do |i|
  ans = [ans, w_arr[i]+e_arr[i]].min
end
puts ans