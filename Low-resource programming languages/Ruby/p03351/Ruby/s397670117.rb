a,b,c,d = gets.chomp.split.map(&:to_i)
puts (a-c).abs > d || (a-b).abs > d && (b-c).abs > d ? 'No' : 'Yes'