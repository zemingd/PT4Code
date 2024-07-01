a,b = gets.split.map(&:to_s)

heihou = (a+b).to_i**(1/2.0)
puts /\.0$/.match(heihou.to_s) ? 'Yes' : 'No'

