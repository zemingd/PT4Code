N,K = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

b = Array.new(N, 0)
a.map { |a| b[a-1] += 1 }
b.sort!.select! {|b| b > 0}

c = b.size
t = 0

if c <= K
  puts 0
else
  until c <= K
    c -= 1
    t += b.shift
  end
  puts t
end
