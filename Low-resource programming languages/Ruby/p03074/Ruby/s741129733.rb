n, k = gets.split.map(&:to_i)
s = gets.chomp
# データ終了の目印を付加
s += "D"
hand_standing = []
standing = []

previous = ""
count = 1

hand_standing << 0 if s[0] == "0"

s.chars do |char|
  if previous == char
    count += 1
  else
    if previous == "0"
      standing << count
    elsif previous == "1"
      hand_standing << count
    end
    previous = char
    count = 1
  end
end

hand_standing << 0 if s[-2] == "0"

hand_standing_sum = []
(k + 1).times { hand_standing_sum.push(hand_standing.shift) unless hand_standing.empty? }
standing_sum = []
k.times { standing_sum.push(standing.shift) unless standing.empty? }
current = hand_standing_sum.inject(0, :+) + standing_sum.inject(0, :+)
ans = current

until hand_standing.empty?
  previous_1 = hand_standing_sum.shift
  current_1 = hand_standing.shift
  hand_standing_sum.push(current_1)
  previous_2 = standing_sum.shift
  current_2 = standing.shift
  standing_sum.push(current_2)
  current += current_1 + current_2 - previous_1 - previous_2
  ans = current if ans < current
end

puts ans
