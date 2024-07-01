n,k,q = gets.split(' ').map(&:to_i)
array = Array.new(n,k)
q.times do |b|
    # クイズのb問目？で正解した人の番号
    a = gets.to_i
    n.times do |c|
        if c == a-1 || array[c] <=0
            
        else
            array[c] = array[c]-1
        end
    end
end
array.each do |d| 
    if d <= 0 
        puts 'No'
    else
        puts 'Yes'
    end
end
