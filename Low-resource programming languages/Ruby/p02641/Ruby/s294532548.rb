x, n = gets.chomp.split(' ').map(&:to_i)
 
if n == 0
  puts x
  exit
end
 
ps = gets.chomp.split(' ').map(&:to_i)
 
values = (0..101).to_a.delete_if { |v| ps.include?(v) }
 
abs_values =
  values.each_with_object([]) do |value, objects|
    abs =  (x - value.abs).abs
    objects << abs
  end
 
min_abs = abs_values.min
puts values[abs_values.find_index(min_abs)]