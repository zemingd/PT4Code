acgt = ["A", "C", "G", "T"]
arr = gets.chomp.chars.map(&:to_s)


arr.each_with_index do |v, k|
  arr[k] = "hoge" unless acgt.include?(v)
end

result = []
i = 0
arr.each_with_index do |v, k|
  if v != "hoge"
    i += 1
    if k == arr.length - 1
      result << i 
    end
  else
    result << i
    i = 0
  end
end

puts result.max