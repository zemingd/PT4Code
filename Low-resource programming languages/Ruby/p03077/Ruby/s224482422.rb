N = gets.to_f
(list ||= []) << $_.to_i while gets
 
time = N / list.min + 4
puts time.ceil