#流れ
#ソートして、探索の方向を一方向にするという方法だけだと、O(n^3)となりアウトとなる。
#小さい2辺a,b(a < b)を固定すると最後の1辺cはc < a + bを満たす必要があることを踏まえる。
#取得した配列をソートし、bの右側にはa,b以上の長さの辺が並ぶようになる。
#bの右隣から、三角形をなす条件を一々チェックしていくとTLEになる
#そこで、bより右側にある数のなす列に対し、三角形の条件を満たさなくなる最初の値(のインデックス)を求める。
#bsearchを使うと、これにかかる時間はO(logn)でいける。
#求めたインデックスと、bのインデックスの差がaとbを固定したときの三角形をなすパターン数になる。
n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort
i = 0
count = 0
while i < n-2
  j = i + 1
  while j < n-1
    sub_arr = arr[(j+1)..(n-1)]#3つ目の辺の候補リスト
    over_id = sub_arr.bsearch_index {|e| e >= arr[i] + arr[j]} || sub_arr.size#三角形を作れなくなる最初のindexを取得
    count += over_id
    j += 1
  end
  i += 1
end
puts count