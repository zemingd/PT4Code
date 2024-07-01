H, W = gets.strip.split.map(&:to_i)

a = Array.new(H).map { gets.strip.split('') }

wc = Array.new(H){0}
H.times { |i| W.times { |j| wc[i] += 1 if a[i][j].eql?('#') } }

hc = Array.new(W){0}
W.times { |j| H.times { |i| hc[j] += 1 if a[i][j].eql?('#') } }

# for degug
# puts

H.times do |i|
  next if wc[i] == 0
  W.times do |j|
    print a[i][j] if hc[j] != 0
  end
  puts
end
