=begin
－－－－－－－－－－－－－－
  S = 入力文字列
  ans = 最大ACGT文字数 
－－－－－－－－－－－－－－
  1: S を一文字づつ取り出す
  2: S[i] が ACGT文字で...
    ある場合: cnt += 1
    ない場合: 現在の cnt と ans を比べる...
      cnt > ansの場合: ans に cnt を代入
      cnt を 0 に戻す
  3: ans を出力
=end

S = gets.chomp
ans = 0
cnt = 0

S.length.times do |i|
  case S[i]
  when 'A','C','G','T'
    cnt += 1
  else
    ans = cnt if ans < cnt
    cnt = 0
  end
end

puts ans