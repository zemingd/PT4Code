N, M = gets.split.map(&:to_i)

HArray = gets.split.map(&:to_i)
ABArray = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }

hash = []
ABArray.each do |pair|
  if hash[pair[0] - 1]
    hash[pair[0] - 1] << pair[1] - 1
  else
    hash[pair[0] - 1] = [pair[1] - 1]
  end

  if hash[pair[1] - 1]
    hash[pair[1] - 1] << pair[0] - 1
  else
    hash[pair[1] - 1] = [pair[0] - 1]
  end
end

count = 0
HArray.each_with_index do |h, index|
  if hash[index]
    if h > HArray.values_at(*hash[index]).max
      count += 1
    end
  else
    count += 1
  end
end

puts count
