n = gets.to_i
edges = gets.split(' ').map(&:to_i).sort

count = 0

(0..n-3).each do |i_a|
  a = edges[i_a]
  (i_a+1..n-2).each do |i_b|
    b = edges[i_b]

    rests = edges[i_b+1..n-1]
    rests_count = n - i_b - 1
    ng_index = rests.bsearch_index{ |c| c >= a + b }
    
    ok_edges_size = ng_index || rests_count
    count += ok_edges_size
  end
end

puts count