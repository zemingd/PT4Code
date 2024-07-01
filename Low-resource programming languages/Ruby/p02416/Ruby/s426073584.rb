while (n=gets.chomp)!="0"
p n.split("").map(&:to_i).inject(:+)
end
