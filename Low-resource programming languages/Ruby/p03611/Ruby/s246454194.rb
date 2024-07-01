n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)

max = ary.max + 1
min = ary.min - 1

candidates = []

ary.each do |x|
  candidates << [x-1, x, x+1]
end

j = 0
sum = 0

min.upto(max) do |i|
  candidates.each do |x|
    if x.include?(i)
      j += 1
      if j > sum
        sum = j
      end
    end
  end
  j = 0
end

puts sum