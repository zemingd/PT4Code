A,B,C,D = gets.strip.split(nil).map(&:to_i)

E = ((C.to_f)/B).ceil
F = ((A.to_f)/D).ceil

if E <= F then
  puts "Yes"
else
  puts "No"
end