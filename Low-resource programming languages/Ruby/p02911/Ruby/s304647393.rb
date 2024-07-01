n, k, q = gets.split(' ').map(&:to_i)

su_ary =
  [].tap do |ary|
    q.times do
      ary.push(gets.to_i)
    end
  end

k_ary = Array.new(n, k)

su_h = su_ary.group_by { |a| a }

su_h.each do |k, v|
  k_ary[k - 1] += v.length
end

k_ary.map! { |kk| kk - q }.each do |k|
  puts k > 0 ? 'Yes' : 'No'
end
