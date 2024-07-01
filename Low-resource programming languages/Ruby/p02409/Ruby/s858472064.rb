N = gets.to_i
info = []
for i in 0..3
  floor = []
  for j in 0 ..2
    floor << Array.new(10,0)
  end
  info << floor
end

N.times {
  b,f,r,v =  gets.split().map { |e|e.to_i  }
  info[b-1][f-1][r-1] += v
}

for dormitory in info
  for floor in dormitory
    string = " " + floor.join(" ")
    puts string
  end
  puts "####################"
end