n=gets.to_i
s=gets.chomp.split("").map(&:to_s)
a=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

(0..s.size-1).each do |x|
    print a[a.index(s[x])+n]
end