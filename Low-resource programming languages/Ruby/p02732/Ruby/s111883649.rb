n = gets.chomp.to_i
aa = gets.chomp.split.map(&:to_i)

n.times do |i|
    array = aa.dup
    ans=0
    array.delete_at(i)
    uniq = array.uniq
    uniq.each do |num|
        cnt=array.count(num)
        ans+=cnt*(cnt-1)/2
    end
    puts ans
end