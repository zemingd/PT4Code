require 'bigdecimal'

N, K = gets.split.map(&:to_i)
array = [0]
array.append(gets.split.map(&:to_i)).flatten!
#p array

(N-K).times { |idx|
  #puts "idx:#{array[idx+1]} idx+K: #{array[idx + K + 1]}"
  puts array[idx+1] >= array[idx + K + 1] ? "No" : "Yes"
}

