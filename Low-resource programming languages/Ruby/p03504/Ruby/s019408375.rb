lines = $stdin.read
array = lines.split("\n")

N,C = array[0].split(" ").map(&:to_i)

sr = array[1..N].map.with_index do |time,i|
  s,t,c = time.split(" ").map(&:to_i)

  blank  = 0.step(s-0.5, 0.5).to_a.map{|n| "_"}.join
  record = s.step(t, 0.5).to_a.map{|n| "#"}.join

  "#{blank}#{record}"
end

max_sharp = 0

for index in 0..2000
  arr = []
  for size in 0..sr.length
    arr << sr[size][index] rescue "_"
  end
  arr.compact!

  counting = arr.count{|mark| mark == '#'}
  max_sharp = counting if max_sharp < counting

  break if arr.empty?
end

puts max_sharp
