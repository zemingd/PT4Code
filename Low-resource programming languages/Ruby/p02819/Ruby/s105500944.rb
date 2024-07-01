require 'prime'

N = gets.to_i               # 単一整数
loop do
    #繰り返す処理
    if Prime.prime?(N) then
      break
    end
    N += 1
end

puts N