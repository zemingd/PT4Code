line = gets.split(' ').map(&:to_f)
b=(line[0]/2).ceil
c=(line[1]/2).ceil
a=b*c+(line[0].to_i-b)*(line[1].to_i-c)
puts a