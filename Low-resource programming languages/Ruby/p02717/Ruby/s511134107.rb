ary = gets.strip.split.map(&:to_i)
num  = []
num << ary.delete_at(0)
num << ary.delete_at(0)
puts ary << num