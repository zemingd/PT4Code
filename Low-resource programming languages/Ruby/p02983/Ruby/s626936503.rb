left, right = gets.chomp.split(" ").map(&:to_i)
mod = 2019
left_mod = left / mod - (left % mod == 0 ? 1 : 0)
right_mod = right / mod
if right_mod - left_mod > 0 then
    puts 0
else
    puts left * (left+1) % mod
end