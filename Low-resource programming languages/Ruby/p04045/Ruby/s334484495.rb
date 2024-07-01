N, K = gets.chomp.split(' ').map(&:to_i)
d = gets.chomp.split(' ').map(&:to_i)
nd = (0..9).select { |i| !d.include?(i) }
a = []
N.to_s.split('').reverse.each do |i|
    j = 0
    while i.to_i > nd[j] do
        j += 1
        break if nd[j].nil?
    end
    a << (nd[j].nil? ? nd[0] : nd[j])
end
b = a.reverse.join.to_i
if (b < N)
    c = (N - b).to_s.split('').reduce(0) {|memo, item| memo + 1 }
    a[c] = a[c].nil? ? (nd[0] == 0 ? nd[1] : nd[0]) : nd.find {|i| i > a[c]}
end

puts a.reverse.join.to_i