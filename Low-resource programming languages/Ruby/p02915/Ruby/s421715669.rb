n = gets.to_i

count = 0

n.times do    # オブジェクト.times do |変数|
  n.times do  # 対象のオブジェクトが持つ数値 -1 を順に代入
    n.times do
      count += 1
    end
  end
end

puts count