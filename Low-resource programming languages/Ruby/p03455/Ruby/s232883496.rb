=begin
    Problem https://atcoder.jp/contests/abc086/tasks/abc086_a
    Reference https://qiita.com/Hayate_0807/items/2e9705091b181a104621
             https://docs.ruby-lang.org/ja/search/version:2.3.0/query:even/#entry-1

=end
a,b = gets.chomp().split(" ").map(&:to_i)
=begin
p a
p b
=end
c = ( a * b ).even?
if c
    puts("Even")
else
    puts("Odd")
end
