x, n = gets.chomp.split(' ').map(&:to_i)

if n == 0
  puts x
  return
end

ps = gets.chomp.split(' ').map(&:to_i)




values = (1..100).to_a.delete_if { |v| ps.include?(v) }

min_abs = 99999999999
abs_values =
  values.each_with_object([]) do |value, objects|
    abs =  (x - value.abs).abs
    objects << abs
    min_abs = abs if abs < min_abs
  end


puts values[abs_values.find_index(min_abs)]