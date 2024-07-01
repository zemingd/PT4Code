H, W = gets.chomp.split.map(&:to_i)
area = (H * W).to_i
area_half = (area / 2).to_i

if area == 2
  puts 0
elsif area.even?
  puts area_half
elsif !area.even?
  puts (area_half) + 1
end
