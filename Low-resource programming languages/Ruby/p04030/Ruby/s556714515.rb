str = gets.chomp.split('')

str2 = []
str.each do |n|
  if n == '0'
    str2 << n
  elsif n == '1'
    str2 << '1'
  elsif n == 'B'
    if str2.any?
      str2.slice!(str2.length - 1)
    end
  end
end

puts str2.join('')
