N = gets.to_i
a = gets.split.map(&:to_i)

count = 0

while true do
  max_even = nil
  max_even_idx = nil

  a.each_with_index do |ad, idx|
    if ad.even? && (max_even.nil? || max_even < ad)
      max_even = ad
      max_even_idx = idx
    end
  end

  break if max_even.nil?

  a.each_with_index do |ad, idx|
    if idx == max_even_idx
      a[idx] = ad / 2
    else
      a[idx] = ad * 3
    end
  end

  count += 1
end

puts count
