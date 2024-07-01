N = gets.to_i
L = gets.split.map(&:to_i).sort
# p L

ans = 0

0.upto(N - 3) do |i|
  a = L[i]
  (i + 1).upto(N - 2) do |j|
    b = L[j]
    left = [a - b, b - a].max
    right = a + b
    l_i = L.bsearch_index { |l| l > left }
    l_i = N if l_i.nil?
    l_i = [j + 1, l_i].max
    r_i = L.bsearch_index { |l| l >= right }
    r_i = N if r_i.nil?
    # p "a:#{a}, b:#{b}, left:#{left}, right:#{right}, l_i:#{l_i}, r_i#{r_i}"
    add = r_i - l_i
    # add -= 1 if left < a && a < right
    # add -= 1 if left < b && b < right
    # add -= j - l_i if j - l_i > 0
    # p add
    ans += [add, 0].max
  end
end

puts ans
