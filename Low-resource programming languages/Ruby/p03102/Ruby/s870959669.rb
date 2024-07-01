N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
count = 0
N.times do |i|
    source_code = gets.split.map(&:to_i)
    modified_source_code = []
    source_code.each_with_index do |num,j|
        modified_source_code << (num * B[j])
    end
    sum = 0
    modified_source_code.each {|num| sum += num}
    if sum + C > 0 
        count += 1
    end
end

puts count
