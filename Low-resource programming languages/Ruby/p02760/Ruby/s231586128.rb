card = []
for i in 1..3
  card << gets.split(" ").map(&:to_i)
end

n = gets.to_i
nums = []
for i in 1..n
  nums << gets.to_i
end

i = 0
while i <= 2
  j = 0
  while j <=  2
    if nums.include?(card[i][j])
      card[i][j] = "○"
    end
    j += 1
  end
  i += 1
end

if (card[0][0] == "○" && card[0][1] == "○" && card[0][2] == "○") || 
    (card[1][0] == "○" && card[1][1] == "○" && card[1][2] == "○") ||
    (card[2][0] == "○" && card[2][1] == "○" && card[2][2] == "○") ||

    (card[0][0] == "○" && card[1][0] == "○" && card[2][0] == "○") ||
    (card[0][1] == "○" && card[1][1] == "○" && card[2][1] == "○") ||
    (card[0][2] == "○" && card[1][2] == "○" && card[2][2] == "○") ||

    (card[0][0] == "○" && card[1][1] == "○" && card[2][2] == "○") ||
    (card[0][2] == "○" && card[1][1] == "○" && card[2][0] == "○")
  puts "Yes"
else
  puts "No"
end