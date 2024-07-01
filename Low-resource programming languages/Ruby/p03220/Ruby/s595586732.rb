N = STDIN.gets.chomp.split(' ').map(&:to_i)
T, A = STDIN.gets.chomp.split(' ').map(&:to_i)
H = STDIN.gets.chomp.split(' ').map(&:to_i)

def foo(height)
  return T - (height  * 0.006)
end

min = nil
index = nil

H.each_with_index do |h, i|
  s = (A - foo(h)).abs
  # puts "#{h}->#{s} min: #{min}"
  if min == nil || s < min
    min = s
    index = i
  end
end

puts index + 1
