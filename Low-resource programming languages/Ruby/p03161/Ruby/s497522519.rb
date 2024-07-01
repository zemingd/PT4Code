n, k = gets.chomp.split(" ")
h = gets.chomp.split(" ").map(&:to_i)

number_of_steps = n.to_i
jump_power = k.to_i

# DP配列を初期化
dp = Array.new(number_of_steps, 0)

(1...number_of_steps).each do |index|
  # 各ステップ数毎のコストを格納する配列
  costs_of_jump = []
  (1..jump_power).each do |jump|
    # ex. 2ステップ目までのコストを考える時、3段ジャンプは計算しない
    break unless index >= jump

    costs_of_jump.push(dp[index - jump] + (h[index] - h[index - jump]).abs)
  end

  dp[index] = costs_of_jump.min
end

puts dp[number_of_steps - 1]
