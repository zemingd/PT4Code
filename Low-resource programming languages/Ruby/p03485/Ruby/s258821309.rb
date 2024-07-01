# https://atcoder.jp/contests/abc082/tasks/abc082_a
# Ruby 3rd Try

a,b = gets.chomp('\n').split(' ').map(&:to_f)
answer = ((a+b)/2).ceil
puts(answer)