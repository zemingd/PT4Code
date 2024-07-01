n=gets.chomp
s=n.chars.map(&:hex).inject :+
puts (n.to_i%s==0 ? "Yes" : "No")
