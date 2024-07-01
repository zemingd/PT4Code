
num = gets
num = num[-1].to_i

hon = [2, 4, 5, 7, 9]
pon = [0, 1, 6, 8]

if num == 3
  p 'bon'
elsif pon.include?(num)
  p 'pon'
else
  p 'hon'
end
