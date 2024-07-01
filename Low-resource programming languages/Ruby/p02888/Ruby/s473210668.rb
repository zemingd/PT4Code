# ABC 143 D - Triangles
# https://atcoder.jp/contests/abc143/tasks/abc143_d

# 1622 ms, 2040 KB
# https://atcoder.jp/contests/abc143/submissions/12694269

n = gets.chomp.to_i
l = gets.chomp.split(/ /).map(&:to_i).sort

# puts sticks.inspect
# puts ""

count = 0
0.upto(n - 3) do |i|
  a = l[i]
  (i + 1).upto(n - 2) do |j|
    b = l[j]
    c_candidates = l[(j + 1)..(n - 1)]
    t = a + b
    # puts "--------"
    # puts c_candidates.inspect
    # puts "a: #{a}, b: #{b}, a + b: #{t}"
    c_over_index = c_candidates.bsearch_index { |c| c >= t }
    if c_over_index.nil?
      count += (n - 1) - j
    else
      count += c_over_index
    end
  end
end

puts count
