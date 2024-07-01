line = gets.split(' ').map(&:to_f)
b=(line[0]/2).ceil
c=(line[1]/2).ceil
a=1
if b>1 && c>1 then
  a=b*c+(line[0].to_i-b)*(line[1].to_i-c)
end
puts a
