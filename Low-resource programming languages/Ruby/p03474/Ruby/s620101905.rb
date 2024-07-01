a,b=gets.split.map(&:to_i)
s=gets.chomp

if s.match(/\A\d{#{a}}[-]\d{#{b}}\z/)
    puts "Yes"
else
    puts "No"
end
