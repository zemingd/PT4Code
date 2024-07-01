s = gets.chomp.split("")
t = gets.chomp.split("")
s_length = s.length
t_length = t.length

result = 0

indexes = Array.new(t_length, -1)
t.each_with_index do |t_i, i|
  s_index = s.index(t_i)
  if s_index.nil?
    result = -1
    break
  else
    indexes[i] = s_index
    if i > 0
      while indexes[i-1] > indexes[i] do
        indexes[i] += s_length
      end
    end
  end
end

unless result == -1
  result = indexes[t_length-1] + 1
end

puts result