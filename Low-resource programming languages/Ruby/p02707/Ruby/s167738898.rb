N = gets.chomp.to_i
arrA = gets.chomp.split.map(&:to_i)

h = {}
arrA.each do |i|
    h[i].nil? ? h[i] = 1 : h[i] += 1
end

for i in (1..N) do
    if h.has_key?(i) then
        puts h[i]
    else
        puts 0
    end
end