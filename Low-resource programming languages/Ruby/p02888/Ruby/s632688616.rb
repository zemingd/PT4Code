N = gets.to_i
array=gets.chomp.split(" ").map(&:to_i).sort

ret = 0 
(0..(N-3)).each do |i|
    x = array[i]
    ((i+1)..(N-2)).each do |j|
        y = array[j]
        sub = array[(j+1)..-1]
        ind = sub.bsearch_index {|z| z >= x+y }
        if ind == nil
            ret += sub.length
        else
            ret += ind
        end
    end
end
puts ret