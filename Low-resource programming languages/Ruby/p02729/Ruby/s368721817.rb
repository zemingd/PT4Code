# nとmを整数として受け取る
nm = gets.split(' ').map(&:to_i)

# nの２パターンの総和をsnと定義
sn = nm[0] * (nm[0] - 1) / 2

# mの2パターンの総和をsmと定義
sm = nm[1] * (nm[1] - 1) / 2

puts sn + sm