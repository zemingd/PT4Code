N = gets.strip.to_i
A = gets.strip.gsub(/\s/,'')
R = Array.new(A.length)
A.each_char.with_index do |a, i|
  R[a.to_i - 1] = i + 1
end
puts R.join(' ')