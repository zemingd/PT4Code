fl = false
loop do
  h, w = gets.split.map(&:to_i)

  break if h == 0 && w == 0

  puts "" if fl
  
  h.times do
    w.times do |j|
     print "#"
     puts "" if j == w-1
    end
  end

  fl = true
end