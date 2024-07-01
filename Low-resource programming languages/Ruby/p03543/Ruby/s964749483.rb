n = gets.split(//).map(&:to_s)

count = Hash.new(0)
n.each do |s|
    count[s] += 1
end

count = count.values
result = "No"
count.each{|n| result = "Yes" if n >= 3 }
puts result