N, M = gets.chomp.split.map(&:to_i) # N個のスイッチ, Mの電球
a = []
c = []
M.times do |m|
  g = gets.split.map(&:to_i)
  a << [*g[1..-1]]
  c << g[0]
end
b = gets.split.map(&:to_i)

p N, M
pp a
pp b
pp c
puts
count = 0

comb_flag = true
[true, false].repeated_permutation(M) do |arr| # arrには, M 個の {T, F}の組み合わせ
  comb_flag = true
  puts
  p arr
  a.each_with_index do |aa, ii|

    print'aa->'; p aa
    p arr.values_at(*aa.map{|aaa|aaa-1})
    p arr.values_at(*aa.map{|aaa|aaa-1}).select{|aa|aa}
    p b[ii]
    p 'last!' if (ii == a.size - 1)
    p (arr.values_at(*aa.map{|aaa|aaa-1}).select{|aa|aa}.size % 2 == b[ii])

    if (arr.values_at(*aa.map{|aaa|aaa-1}).select{|aa|aa}.size % 2 == b[ii]) && comb_flag
      count += 1 if (ii == a.size - 1)

    else
      comb_flag = false
    end
  end
end

puts "こたえ"
p count
