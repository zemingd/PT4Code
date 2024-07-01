h, w = gets.split.map(&:to_i)
field = h.times.map {gets.chomp.chars}

remove_rows = ->{
  compared = ["."] * field.first.size
  field.delete(compared)
}
remove_rows.()

field = field.transpose
remove_rows.()
field = field.transpose

puts field.map(&:join)
