num_slimes = gets.chomp.to_i
slimes_colors = gets.chomp
previous_slime_color = ""
num_fusioned_slimes = 0
slimes_colors.each_char do |char|
    if previous_slime_color != char
        num_fusioned_slimes += 1
        previous_slime_color = char
    end
end

puts num_fusioned_slimes