n,m = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

ways = Array.new(n) {[]}

m.times do
  a,b = gets.split.map(&:to_i)
  ways[a-1].push b-1
  ways[b-1].push a-1
end

count = 0

ways.each.with_index do |way, i|
  h = hs[i]
  top = true

  ways[i].each do |other|
    if hs[other] >= h
      top = false
      break
    end
  end

  if top
    count += 1
  end
end

puts count
