N = gets.to_i
array = gets.split.map(&:to_i)

if !array.include?(1)
    puts -1
elsif array == (1..N).to_a
    puts 0
else
    a_nums = array.sort.uniq
    
    current_index = 0
    i_head = 0
    
    b.each do |num|
        new_index = array.index.with_index { |a, i| a == num && i >= current_index }
        break if new_index.nil?
        
        current_index = new_index
        i_head = num
    end
    
    puts N - i_head
end