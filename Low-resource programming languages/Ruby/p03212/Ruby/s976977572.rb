S = gets.chomp
x = S.to_i
N = S.length

# nと同じ桁までの七五三数をすべて列挙して、そのあとx以下のものの数を判定することにする

# 2桁ならなし
if N < 3
  puts 0
  exit
end

ans = 0

3.upto(N) do |d|
  # 3や5だけのものもすべて列挙して、3,5,7すべてあるものだけ保存する
  ['3', '5', '7'].repeated_permutation(d) do |arr|

    next unless arr.include?('3')
    next unless arr.include?('5')
    next unless arr.include?('7')
    
    ans += 1 if arr.join.to_i <= x
  end
end

p ans

