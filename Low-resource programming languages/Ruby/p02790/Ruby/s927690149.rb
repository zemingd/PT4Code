a,b = gets.chomp.split(" ").map(&:to_s)

a_string =''
b_string =''

b.to_i.times do
  a_string= a_string + a
end

a.to_i.times do
  b_string= b_string + b
end

if a.to_i > b.to_i
  puts b_string
else
  puts a_string
end