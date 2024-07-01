# すぬけ君は、1 から 12 までの整数を下図のようにグループ分けしました。 
# 整数 x, y (1≤x<y≤12) が与えられるので、x, y が同一のグループに属しているか判定してください。

input = gets.chomp.split
x = input[0].to_i
y = input[1].to_i

groups = [
    [1, 3, 5, 7, 8, 10, 12],
    [4, 6, 9, 11],
    [2]
]

3.times do |i|
    if groups[i].include?(x) && groups[i].include?(y)
        puts "Yes"
        break
    end
    if i == 2
        puts "No"
    end
end