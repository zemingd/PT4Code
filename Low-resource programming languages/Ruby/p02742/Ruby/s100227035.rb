line = gets.split(' ').map(&:to_f)
a=0
b=(line[0]/2).ceil
c=(line[1]/2).ceil
if line[1].to_i%2 != 0 then
  a=b*c+(line[0].to_i-b)*(c-1)
else
  a=b*c+(line[0].to_i-b)*c
end
puts a
