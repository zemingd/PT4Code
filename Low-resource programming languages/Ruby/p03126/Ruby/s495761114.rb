N, M = gets.chomp.split.map(&:to_i)
count_m = Hash.new(0)

N.times{
    k, *a = gets.chomp.split.map(&:to_i)
    a.each_with_object(count_m) {|key, hash| hash[key] += 1}
}

p count_m.inject(0) {|sum, (_, value)| sum = value == N ? sum + 1 : sum}