H,W=gets.split.map(&:to_i)
arr = []
H.times do
    cs=gets.chomp.chars
    arr << cs if cs.include?('#')
end
arr = arr.transpose.delete_if {|cs| !cs.include?('#')}
arr.transpose.each do |cs|
    puts cs.join
end
