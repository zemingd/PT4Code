N = gets.to_i
L = gets.split.map(&:to_i).sort

list = [*0...N]
ans = 0

(0...(N - 1)).each do |i|
  ((i + 1)...(N - 1)).each do |j|
    sum = L[i] + L[j]

    next if sum <= L[j + 1]

    k = list.bsearch_index { |idx| L[j] < L[idx] && L[idx] > sum }

    if k.nil?
      k = N - 1
    else
      k = j + k - 2
    end

    ans += k - j
  end
end

puts ans
