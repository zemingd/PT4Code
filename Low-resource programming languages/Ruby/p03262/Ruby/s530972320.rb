N, X = gets.split.map(&:to_i)
towns = gets.split.map(&:to_i).sort
first_point = nil
diff_array = []


diff = (towns[-1] - X).abs
point_diff = (towns[-1] - X).abs

towns.each_with_index{|i, idx|
  if diff > (X-i).abs
    first_point - i
    diff = (X-i).abs
  end
  unless idx == 0
    diff_array << (towns[idx]-towns[idx-1])
  end
}

diff_array << diff
if diff_array.length == 1
  diff_array << diff
end

diff_array.sort!

result = diff_array.reduce{|memo, item|
  memo.gcd(item)
}
puts result

if diff_array.empty?
  puts (X-towns[0]).abs
end