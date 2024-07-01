N, Y = gets.strip.split.map(&:to_i)

is_exist = false
i = j = k = 0
while i <= N
  while j <= (N - i)
    r  = Y - (i * 10000) + (j * 5000) 
    k = r / 1000
    l = r % 1000
    if l.zero? && N.eql?(i + j + k)
      is_exist = true
      break
    end
    j += 1
  end
  break if is_exist
  i += 1
  j = 0
end

i = j = k = -1 unless is_exist 
puts "#{i} #{j} #{k}"
