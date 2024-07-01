n,k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
num = [arr.uniq.size - k,0].max#減らすべき種類の個数
if num == 0
  puts 0
  exit
end
num_list = Array.new(arr.uniq.size,0)#各数字が何回現れたかチェッカー
arr.sort! << -1
i = 0
j = 0
count = 1
while i < n
  if arr[i] == arr[i+1]
    count += 1
  else
    num_list[j] = count
    count = 1
    j += 1#num_listのインクリメント
  end
  i += 1
end
puts num_list.reverse[0..(num-1)].sum