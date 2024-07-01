a = gets.chomp
b = a[0..(a.length - 1)/2-1]

if a[(a.length+3)/2-1..a.length-1] == b
    p "Yes"
else
    p "No"
end