N = gets.to_i
$hash = {}
(1..N).each do |i|
  $hash[i] = []
  a = gets.to_i
  a.times { $hash[i] << gets.split.map(&:to_i) }
end
$counts = []

def dfs(array, num)
  if num == N
    possibility = true
    array.each_with_index do |honest_1, index|
      next if honest_1 == 0
      $hash[index + 1].each do |person, honest_2|
        if array[person - 1] != honest_2
          possibility = false
          break
        end
      end
      break if possibility == false
    end
    $counts << array.count(1) if possibility == true
    return
  end
  dfs(array + [1], num + 1)
  dfs(array + [0], num + 1)
end

dfs([], 0)
puts $counts.max
