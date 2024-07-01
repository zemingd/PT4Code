a,b,c,d = gets.chomp.chars
puts( ((a==b&&b==c) || (b==c&&c==d)) ? 'Yes' : 'No')