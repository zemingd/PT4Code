n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

result = [0]*n

half =  n/2
half +=1 if n.odd?

(n-1).downto(0) do |index|
  current_sum = 0
  (2..(n/(index+1))).each do |search_index|
    current_sum += result[(index+1)*search_index-1]
  end
  current_sum %= 2

  result[index] = (current_sum + a[index])%2
end


boxes = result.map.with_index {|n,i| [n, i+1] }.select {|n,i| n==1 }.map(&:last)
p boxes.length
puts boxes.join(' ') unless boxes.length.zero?

