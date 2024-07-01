x = gets.chomp.to_i

h = {}
(0..120).each do |i|
  h[i] = i ** 5
  h[-i] = - h[i]
end

def search(x, h)
  (-120..120).to_a.each do |a|
    (-120..120).to_a.each do |b|
      return [a, b] if h[a] - h[b] == x
    end
  end

  return nil
end

ab = search(x, h)
raise if ab.nil?
puts ab.map(&:to_s).join(' ')
