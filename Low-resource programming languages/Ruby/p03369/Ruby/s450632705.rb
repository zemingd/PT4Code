# Problem https://atcoder.jp/contests/abc095/tasks/abc095_a
# Ruby 3rd Try
ajitama,buta,negi = gets.chomp('\n').split('')
topping = 0
if ajitama == 'o'
    topping += 100
end
if buta=='o'
    topping += 100
end
if negi == 'o'
    topping += 100
end
answer = 700 + topping
puts(answer)