x, n = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

targets = (-200..200).to_a - ps

min = 10**20
ans = 10**20
targets.each do |t|
  if (x-t).abs < min
    ans = t
    min = (x-t).abs
  elsif (x-t).abs == min && t < ans
    ans = t
  end
end
puts ans