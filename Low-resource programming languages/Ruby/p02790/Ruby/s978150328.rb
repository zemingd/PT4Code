X,Y=gets.chomp.split(' ').map{|n| n.to_i}

a = X.to_s * Y.to_i
b = Y.to_s * X.to_i

if X.to_i < Y.to_i
  puts a
else
  puts b
end