s = gets.chomp.split("")
arr1 = []
arr2 = []
first = (s.size - 1) / 2
last = (s.size + 3) / 2
ss = s.reverse
s1 = s.join("")
s2 = ss.join("")
if first % 2 == 1
    (0..first-1).each do |i|
        arr1 << s[i]
    end
    j = 0
    (last-1..s.size-1).each do |i|
        arr2 << s[i]
    end
    arr1m = arr1.join("")
    arr2m = arr2.join("")

    arr1r = arr1.reverse.join("")
    arr2r = arr2.reverse.join("")
    if arr1m == arr1r && arr2m == arr2r &&  s1 == s2
        puts "Yes"
    else
        puts "No"
    end
elsif first % 2 == 0
    (0..first-1).each do |i|
        arr1 << s[i]
    end
    j = 0
    (last-1..s.size-1).each do |i|
        arr2 << s[i]
    end
    arr1m = arr1.join("")
    arr2m = arr2.join("")

    arr1r = arr1.reverse.join("")
    arr2r = arr2.reverse.join("")
    if arr1m == arr1r && arr2m == arr2r  &&  s1 == s2
        puts "Yes"
    else
        puts "No"
    end
end