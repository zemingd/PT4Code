n = gets.to_i
a = gets.split(" ").map(&:to_i)
h = Hash.new(0)

result = "YES"
a.each do |a|
    if h.has_key?(a)
        result = "NO"
    else
        h[a] = 1
    end
end
puts result
