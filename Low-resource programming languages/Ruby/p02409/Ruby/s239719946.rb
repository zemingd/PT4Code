xs = Array.new(4) {
  Array.new(3) {
    Array.new(10) { 0 }
  }
}

gets.to_i.times do 
  b,f,r,v = gets.split(" ").map(&:to_i)
  xs[b - 1][f - 1][r - 1] += v
end

puts xs.map {|building| 
  building.map {|floor| floor.join(" ") }.join("\n")
}.join("\n" + "#" * 19 + "\n")