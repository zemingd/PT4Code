# 入力xyz
# ["a", "x", "y"]
a = gets.chomp.split("").sort!.join
b = gets.chomp.split("").sort.reverse!.join

# ["axy", "ayx", "xay", "xya", "yax", "yxa"]
# arry = a.permutation(a.length).collect {| tmpa | tmpa.join }
# brry = b.permutation(b.length).collect {| tmpb | tmpb.join }
# result = arry.product(brry).collect {|seta, setb| seta < setb }

if a < b
    puts 'Yes'
else
    puts 'No'
end