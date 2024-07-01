tar = gets.chomp.to_i
num_1 = gets.chomp.to_i

amari = tar % 500
puts amari <= num_1 ? 'Yes' : 'No'