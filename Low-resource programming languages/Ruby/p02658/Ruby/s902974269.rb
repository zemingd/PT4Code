N = gets.to_i
num = gets.split.map(&:to_i)
total = 1
max = 10 ** 18

num.each do |n|
  total *= n
  if total > max
    puts -1
    exit #プログラムを終了
    #breakは繰り返し処理が終了するだけ、繰り返しの後に記述している処理を実行する
  end
end

puts total
