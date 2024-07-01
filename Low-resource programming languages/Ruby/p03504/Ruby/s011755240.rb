n, c = gets.chomp.split(" ").map(&:to_i)

N_MAX = 10**5

r = Array.new(N_MAX + 1, 0)

n.times do
  si, ti, ci = gets.chomp.split(" ").map(&:to_i)
  si.upto(ti) do |i|
    r[i] += 1
  end
end

puts r.max