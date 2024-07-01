L, R = gets.chomp.split(' ').map(&:to_i)
N = 2019
min = 2019
L.upto(R) do |n|
  mod = (n*(n+1)) % N
  if mod.zero?
    puts 0
    exit
  end
  min = mod if mod < min
end
puts min
