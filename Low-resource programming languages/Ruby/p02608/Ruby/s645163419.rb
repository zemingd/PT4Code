# frozen_string_literal: true

DEBUG = 1

def return_number(_x, _y, _z, _count)
  return 0 if _count == 0

  if _x == _z
    1
  elsif ((_x == _y) && (_y != _z)) || ((_y == _z) && (_x != _y))
    3
  else
    6
  end
end

def calc(x, y, z)
  x * x + y * y + z * z + x * y + x * z + y * z
end

# 条件を満たす個数を返す
def refrain(_n)
  count = 0
  x = 1
  y = 1
  z = 1
  loop do
    result = 0
    y = x
    loop do
      z = y
      loop do
        result = calc(x, y, z)
        # puts "DEBUG x,y,z,=#{x},#{y},#{z},n,result=#{_n},#{result}" if DEBUG
        if result == _n
          count += 1
        elsif result > _n
          break
        end
        z += 1
      end
      break
      y += 1
    end
    break
    x += 1
  end
  return_number(x, y, z, count)
end

INPUT_LINE = gets.chomp!.to_i
# pp INPUT_LINE
# 0から入力数まで繰り返す
INPUT_LINE.times do |n|
  result = refrain(n + 1)
  puts result if result != -1
end
# calcを呼び出す
# 個数を出力
