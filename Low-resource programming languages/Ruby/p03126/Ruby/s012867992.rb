n,m = gets.chomp.split.map(&:to_i)
arr = []
n.times.map {arr << gets.split.map(&:to_i)}
counter = 0
arr_all = []
#1人につき、k種類回答する(k = 各人の回答配列のarr[0]要素)
arr.each do |v|
   v[1..v[0].to_i].each do |v2|
    arr_all << v2
   end
end

# n人全員が好きと答えたもの　
# <=> 回答全体を同じ配列にまとめ、
# ある要素がn個ある

(1..m).to_a.each do |v|
  if arr_all.count(v) == n
    counter += 1
  end
end

p counter