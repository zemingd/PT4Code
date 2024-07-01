n, q = gets.chomp!.split(" ").map!(&:to_i)
s = gets.chomp!

memo = {}

s.each_char.each_cons(2).with_index(0) {|(first, second), i|
    if first == 'A' && second == "C"
        memo[i] = i
    end
}


q.times do |i|
    l, r = gets.chomp!.split(" ").map!(&:to_i)
    s = ((l-1).upto(r-2)).inject(0) do |sum, i|
        sum + (memo[i] ? 1 : 0)
    end

    puts s
end
