N, K = gets.chomp.split(' ').map(&:to_i)
d = gets.chomp.split(' ').map(&:to_i)
nd = (0..9).select { |i| !d.include?(i) }
a = []
N.to_s.split('').reverse.each do |i|
    j = 0
    while i.to_i > nd[j] do
        j += 1
        if(nd[j].nil?)
            a << nd[0]
            break
        end
    end
    a << nd[j]
end

b = a.reverse.join.to_i
if (b < N)
    c = (N - b).to_s.split('').map {|item| nd[0] }
    c = (c.unshift nd[1].nil? ? nd[0] : nd[1]).join('').to_i
    b = c > b ? c : b + c
end

puts b