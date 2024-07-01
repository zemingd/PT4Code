# https://atcoder.jp/contests/abc065/tasks/abc065_a



X, A, B = gets.split.map(&:to_i)

ans = if B <= A
        'delicious'
      elsif B <= A + X
        'safe'
      else
        'dangerous'
      end
puts ans
