n=gets.chomp
n.gsub!(/1/,'#')
n.gsub!(/9/,'1')
n.gsub!(/#/,'9')
puts n