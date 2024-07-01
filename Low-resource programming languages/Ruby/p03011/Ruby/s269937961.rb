i=gets.chomp.split.map(&:to_i)
a=i.min
i.delete_at(i.index(i.min))
b=i.min
puts a+b