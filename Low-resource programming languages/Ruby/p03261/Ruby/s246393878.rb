input = $stdin.read.split("\n")
input = input.slice(1, input.size - 1)
unless input.uniq.size == input.size
  puts 'No'
  exit
end

result = 'Yes'
input.each_with_index do |a, i|
  break if input.size - 1 == i
  a = a.split('')
  next_a = input[i + 1].split('')
  unless a[a.size - 1] == next_a[0]
    result = 'No'
    break
  end
end
puts result