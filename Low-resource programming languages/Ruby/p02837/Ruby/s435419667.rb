nums = gets.to_i
possibility = [0, 1].repeated_permutation(nums).to_a
testenomies = []

nums.times do |i|
  testenomy_count = gets.to_i
  testenomy = []
  testenomy_count.times do
    data = gets.split.map(&:to_i)
    one_testenomy = { "object": (data[0] - 1), "content": data[1] }
    testenomy << one_testenomy
  end
  testenomies << testenomy
end

result = 0
possibility.each do |assertion|
  flag = true
  assertion.each_with_index do |ass, i|
    if ass == 1
      testenomies[i].each do |honesty_testenomy|
        if assertion[honesty_testenomy[:object]] != honesty_testenomy[:content]
          flag = false
          break
        end
      end
    end
    break unless flag
  end
  if flag == true
    result = assertion.count(1) if result < assertion.count(1)
  end
end

puts result