p proc{ |n,d| (n..100000).select{ |i| i.to_s.chars.all?{ |j| !d.include?(j) }}.first}.(gets.to_i,gets.split)