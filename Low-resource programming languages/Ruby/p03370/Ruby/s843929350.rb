# パティシエの赤木さんは、「お菓子の素」という粉のみを材料として
# N 種類のドーナツを作ることができます。
# これらのドーナツはドーナツ 1、ドーナツ 2、...、ドーナツ N と呼ばれます。
# ドーナツ i (1≤i≤N) を 1 個作るには、お菓子の素 mi グラムを消費する必要があります。
# なお、0.5 個など整数でない個数のドーナツを作ることはできません。
# いま、赤木さんはお菓子の素を X グラム持っています。
# これを使って、今夜のパーティーに向けて可能な限り
# たくさんのドーナツを作ることにしました。
# ただし、来客の味の好みは様々なので、次の条件を守ることにしました。
# N 種類のドーナツそれぞれを少なくとも 1 個は作る。
# このとき、最大で何個のドーナツを作ることができるでしょうか？
# お菓子の素を使い切る必要はありません。
# また、この問題の制約のもとでは、条件を守ることは必ず可能です。

input_line_1 = gets.chomp.split
n = input_line_1[0].to_i
x = input_line_1[1].to_i

count = n
remain_ingredients = x

m = Array.new
n.times do
  input_line = gets.to_i
  remain_ingredients -= input_line
  m << input_line
end

min = m.min

loop do
  if remain_ingredients < min
    break
  else
    remain_ingredients -= min
    count += 1
  end
end

puts count
