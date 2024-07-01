N = gets.chomp.to_i
arrA = gets.chomp.split.map(&:to_i)

for i in (1..N) do
    puts arrA.count(i)
end