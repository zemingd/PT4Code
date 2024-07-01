h,w=gets.chomp.split(' ').map(&:to_i)
sh,sw=gets.chomp.split(' ').map(&:to_i)
print("#{(h*w)-((w*sh)+(sw*(h-sh)))}\n")