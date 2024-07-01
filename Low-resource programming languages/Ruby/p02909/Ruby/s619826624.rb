# a = gets.to_i
# b = gets.to_i
s = gets.chomp
# s,t = gets.split.map(&:to_s)
# n= gets.split.map(&:to_i)

# s = gets.chomp.chars.uniq
# puts gets.chomp.chars.uniq.size != 1 ? "Yes" : "No"

ans = "Sunny"
if s == "Sunny"
    ans = "Cloudy"
elsif s == "Cloudy"
    ans = "Rainy"
end

puts(ans)