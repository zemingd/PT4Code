shurui,kona = gets.split(" ").map(&:to_i)
dornuts = Array.new(shurui)
dornuts_cnt = 0
dornuts.map!{ |item|
  item = gets.to_i()
}
dornuts.sort!
dornuts.map{ |item|
  kona = kona - item
  dornuts_cnt+= 1
}
dornuts_cnt += kona/dornuts[0]
p dornuts_cnt