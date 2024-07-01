N, K, Q = gets.split.map(&:to_i)
As = Array.new(Q) { gets.to_i }

h = As
  .group_by(&:itself)
  .map { |k, v| [k, v.size] }
  .select { |k, v| v > Q - K }
  .to_h

1.upto(N) do |k|
  puts K > Q ? 'Yes' : h[k] ? 'Yes' : 'No'
end
