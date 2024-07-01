gets
sticks = gets.chomp.split(" ").map!(&:to_i).sort!.reverse!

h = Hash.new(0)
first = nil
second = nil

sticks.each do |length|
  h[length] += 1
  if h[length] == 2 and first.nil?
    first = length.to_i
  elsif h[length] == 2 and second.nil?
    second = length.to_i
  end

  if h[length] == 4 and second.nil?
    second = length.to_i
  end

  break if first and second
end

print (first and second) ? first * second : 0