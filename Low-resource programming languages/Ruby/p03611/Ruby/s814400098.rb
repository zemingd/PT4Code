n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i).sort

cnt = 0
max = 0

(ary[0]..ary[-1]).to_a.each do |i|
  ary.each do |x|
    if x == i || x == i + 1 || x == i - 1
      cnt += 1
      if cnt > max
        max = cnt
      end
    end
  end
  cnt = 0
end

puts max