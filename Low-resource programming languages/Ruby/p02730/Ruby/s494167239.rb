str = gets
# rev = str.reverse
len = str.length
# akasaka
palindrome = str.slice(0,(len - 1 ) / 2)

if str.slice((len + 3 - 1) / 2, len) == palindrome
    puts "Yes"
else
    puts "No"
end