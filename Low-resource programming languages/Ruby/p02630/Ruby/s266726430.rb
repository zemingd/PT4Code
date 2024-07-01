n = gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new

sum = 0
a.each do |aa|
    h[aa] = 0 unless h.has_key?(aa)
    h[aa] += 1
    sum += aa
end

q = gets.to_i
q.times do
    b, c = gets.split.map(&:to_i)

    if h.has_key?(b) == false
        puts sum
        next
    end

    h[c] = 0 unless h.has_key?(c)

    sum -= b * h[b]
    sum += c * h[b]

    h[c] += h[b]
    h[b] = 0
    puts sum
end