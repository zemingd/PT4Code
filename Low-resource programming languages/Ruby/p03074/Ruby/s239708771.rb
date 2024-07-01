def input_n
  gets.to_i               # 単一整数
end

def input_s
  gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
end

def input_a
  gets.split.map(&:to_i)  # スペースで区切られた複数の整数
end

def input_o(num)
  num.times.map { gets.to_i }  # 縦に並んだ複数の整数。たまにある
end

def output_f(num)
  puts sprintf("%.12f", num)
end

n, k = input_a
s = input_s

a = s.chars
# 0, 1の連続している個数を格納する配列(連続する個数を記録するとき、常に0,1は交互に現れる)
# 最初と最後に必ず1の個数が入るものとする(入力文字列Sがそうでない場合1の個数は0)
counts = []

before = "1"
cnt = 0
# 0, 1が切り替わる度にpush
a.each do |s|
  if s != before
    counts.push(cnt)
    cnt = 1
    before = s
    next
  end
  cnt += 1
end
# 最後の0, 1は切り替わりが行われないため個別にpush
counts.push(cnt)
# 最後が1でなかった場合にpush
if a.last == "0"
  counts.push(0)
end

# 最大K回反転可能であるということは、0のcountを最大K回1のcountに反転できるのと同義である
# countsの左端から右端まで、しゃくとり法で各区間の和を計算することで、最大値が求められる
# 1は反転する必要がないので、区間の長さは2Kとなる→両端が1のとき、1,0の個数は奇数になるので2K+1
# また、連続する1の個数が最大になるのは、両端が0ではなく1になるときであるため、区間は2ずつ進める
# でもしゃくとり法で計算するの混乱する。。。

# 累積和の計算
sums = Array.new(counts.size + 1)
sums[0] = 0
(counts.size).times do |i|
  sums[i + 1] = sums[i] + counts[i]
end

# 左端から2ずつずらして、各区間の総和を累積和から計算する
result = 0
left = 0
while left < sums.size do
  right = left + (k * 2 + 1)
  # rightがはみ出さないように処理
  if right >= sums.size
	right = sums.size - 1
  end
  result = [result, sums[right] - sums[left]].max
  left += 2
end

p result