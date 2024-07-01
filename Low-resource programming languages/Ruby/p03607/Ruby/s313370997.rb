# あなたは、joisinoお姉ちゃんと以下のようなゲームをしています。
# 最初、何も書いていない紙がある。
# joisinoお姉ちゃんが一つの数字を言うので、
# その数字が紙に書いてあれば紙からその数字を消し、
# 書いていなければその数字を紙に書く。これを N 回繰り返す。
# その後、紙に書かれている数字がいくつあるかを答える。
# joisinoお姉ちゃんが言った数字が、言った順番に A1,...,AN として与えられるので、
# ゲーム終了後に紙に書かれている数字がいくつあるか答えてください。

# 何も書いていない紙を定義
paper = Array.new

# 操作を繰り返す回数を取得
n = gets.chomp.to_i

# お姉ちゃんが言う数字をn回取得
n.times do
  a = gets.chomp.to_i
  
  # その数字が紙に書かれてあるか判定
  if paper.include?(a)
    paper.delete(a)
  else
    paper << a
  end
end

# 結果を出力
puts paper.length