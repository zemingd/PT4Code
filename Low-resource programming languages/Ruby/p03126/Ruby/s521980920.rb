input = gets.chomp
N,M = input.split(" ").map{|e| e.to_i}

array = []
M.times do
  array << 0
end

N.times do
  input = gets.chomp
  sukinamono = input.split(" ").map{|e| e.to_i}
  sukinamono.shift
  sukinamono.each do|item|
    array[item-1] += 1
  end
end
sum =0
array.sort.reverse.each do |item|
  sum += 1 if item == N
  break if item < N
end

puts sum