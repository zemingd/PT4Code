N, Y = gets.strip.split.map(&:to_i)

def fin(i, j, k)
  puts "#{i} #{j} #{k}"
  exit
end

(0..N).each do |i|
  (0..(N - i)).each do |j|
    fin(i, j, k) if Y.eql?(i * 10000 + j * 5000 + (N - i - j) * 1000)
  end
end

fin(-1, -1, -1)
