N = gets.chomp
=begin
N の 1 の位が 2,4,5,7,9のとき hon
Nの 1 の位が 0,1,6,8のとき pon
Nの 1 の位が 3 のとき bon
=end

if [2,4,5,7,9].include?(N[-1].to_i) then
  puts "hon"
elsif [0,1,6,8].include?(N[-1].to_i) then
  puts "pon"
else
  puts "bon"
end