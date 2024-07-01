count = 0

if false
  num = 2
  monster = [3, 5 ,2]
  warrior = [4, 5]
else
  num = gets.to_i
  monster = gets.split.map(&:to_i)
  warrior = gets.split.map(&:to_i)
end

for int in 0..num - 1 # 大元のループ
  # モンスターと勇者の数の大小を比較して条件分岐
  if monster[int] >= warrior[int]
    monster[int] = monster[int] - warrior[int]
    count += warrior[int]
  else
    count += monster[int]
    warrior[int] -= monster[int]
    # モンスターが勇者の数より少ない場合、隣の街に行く
    if monster[int+1] >= warrior[int] # モンスターが多い 
      monster[int+1] -= warrior[int]
      count += warrior[int]
    else                              # 勇者のほうが多い（勇者は無駄になる）
      warrior[int] -= monster[int+1]
      count += monster[int+1]
    end
  end
end
puts count