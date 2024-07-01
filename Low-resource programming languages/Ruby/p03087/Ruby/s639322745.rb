n, q = gets.chomp.split.map(&:to_i)
s = gets
l, r = [], []
q.times do |hoge|
    l[hoge], r[hoge] = gets.chomp.split.map(&:to_i)
end

q.times do |hoge|
    bubun = s[(l[hoge] - 1)..(r[hoge] - 1)]
    if bubun.include?("AC")
        puts bubun.count("AC") / 2
    else
        puts 0
    end
end