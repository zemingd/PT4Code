lines = $stdin.read
array = lines.split("\n")
N = array[0].to_i
L = array[1].split(" ").map(&:to_i).sort
ans = 0

(N-1).downto(0) do |mid|
  (mid-1).downto(0) do |low|
    a = L[mid]
    b = L[low]
    idx = L[0...low].bsearch_index{|c| c > a-b}
    unless idx.nil?
      ans += low - idx
    end
  end
end

puts ans