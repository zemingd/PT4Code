N, K = gets.split.map(&:to_i)

hash = {}

N.times do |i|
    a, b = gets.split.map(&:to_i)
    hash[a] ||= 0
    hash[a] += b
end

k = K

hash.keys.sort.each do |key|
    k -= hash[key]
    if k <= 0
        puts key
        exit
    end
end

exit