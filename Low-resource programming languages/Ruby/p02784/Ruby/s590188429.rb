h, n = gets.split.map(&:to_i)
puts(if h > gets.split.map(&:to_i).inject(:+)
    'No'
else
    'Yes'
end
)