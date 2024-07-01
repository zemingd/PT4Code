n,k,q = gets.split(' ').map(&:to_i)
array = Array.new(n,k-q)
q.times do |b|
    # クイズのb問目？で正解した人の番号
    a = gets.to_i-1
    array[a] +=1
end
array.each do |d| 
    if d <= 0 
        puts 'No'
    else
        puts 'Yes'
    end
end
