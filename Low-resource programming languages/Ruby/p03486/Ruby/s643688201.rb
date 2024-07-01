# 入力xyz
# ["a", "x", "y"]
a = gets.chomp.split("")
b = gets.chomp.split("")

# ["axy", "ayx", "xay", "xya", "yax", "yxa"]
arry = a.permutation(a.length).collect {| a | a.join }
brry = b.permutation(b.length).collect {| b | b.join }

result = arry.product.(brry).collect {|seta, setb| seta < setb }

if result.include?(true)
    return 'Yes'
else
    return 'No'
end