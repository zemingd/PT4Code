str = gets.chop.split('')
str_count = str.count

def palindrome?(array)
  count = array.count
  mid = count / 2
  array[0..mid - 1] ==  array[mid + 1..-1].reverse
end

is_palindrome =  palindrome?(str) && palindrome?(str[0..((str_count - 1) / 2 - 1)]) && palindrome?(str[((str_count + 3) / 2 - 1)..-1])

puts is_palindrome ? 'Yes' : 'No'
