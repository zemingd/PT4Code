input = STDIN.gets.chomp.split('')

result = []

input.each do |n|
  if n == '0'
    result << '0'
  end

  if n == '1'
    result << '1'
  end

  if n == 'B'
    if result.length != 0
      result.pop
    end
  end
end

p result.join("")
