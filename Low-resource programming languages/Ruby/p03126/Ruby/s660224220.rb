a, i = gets.chomp.split.map(&:to_i)
n = Array.new(a)
d = Array.new
a.times do |hoge|
    n[hoge] = gets.chomp.split.map(&:to_i)
    n[hoge].delete_at(0)
    if hoge != 0 then
        d = n[hoge] & n[hoge - 1]
        n[hoge] = d
    else 
        d = n[hoge]
    end
end
puts d.size
