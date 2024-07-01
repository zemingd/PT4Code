str = gets

len = str.length
# akakasakaka
palindrome = str.slice(0,(len - 1 ) / 2)
pali_str = str.slice((len + 3) / 2 - 1, len - ((len + 3) / 2 - 1))

if pali_str == palindrome
    if palindrome.reverse == palindrome && pali_str.reverse == pali_str
        puts "Yes"
    else
        puts "No"
    end
else
    puts "No"
end