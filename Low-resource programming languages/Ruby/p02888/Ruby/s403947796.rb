# ABC 143 D - Triangles
# https://atcoder.jp/contests/abc143/tasks/abc143_d

n = gets.chomp.to_i
l = gets.chomp.split(/ /).map(&:to_i).sort

# puts sticks.inspect
# puts ""

count = 0
0_i64.upto(n - 3) do |i|
  # a = l[i]
  (i + 1).upto(n - 2) do |j|
    # b = l[j]
    candidates = l[(j + 1)..(n - 1)]
    # puts "--------"
    # puts "a: #{a.length}, b: #{b.length}, a - b: #{a.length - b.length}"
    # puts candidates.inspect
    t = l[i] + l[j]
    c_over_index = candidates.bsearch_index { |c| c >= t }
    if c_over_index.nil?
      count += (n - 1) - j
    else
      count += c_over_index
    end
  end
end

puts count
