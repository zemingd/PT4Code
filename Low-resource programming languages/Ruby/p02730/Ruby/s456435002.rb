str = gets

len = str.length

palindrome = str.slice(0,(len - 1 ) / 2)
pali_str = str.slice((len + 3) / 2 - 1, len - ((len + 3) / 2 - 1))

if pali_str == palindrome
    puts "Yes"
else
    puts "No"
end