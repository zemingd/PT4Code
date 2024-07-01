hash = {}

gets.to_i.times do
  b, f, r, v = gets.split

  key = b + f + r
  val = hash.fetch(key, 0)

  hash[key] = val + v.to_i
end

(1..4).each do |b|
  (1..3).each do |f|
    (1..10).each do |r|
      v = hash.fetch("#{b}#{f}#{r}", 0)
      print " #{v}"
    end
    puts
  end
  puts '####################' if b != 4
end

