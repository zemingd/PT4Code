N,*as=$<.read.split.map(&:to_i)

arr = Array.new(8,0)
x=0

as.each do |a|
    if a < 3200
        arr[a/400] = 1
    else
        x += 1
    end
end

n = arr.inject(&:+)
min = [1,n].max
# max = [8,n+x].min
max = n+x

puts "#{min} #{max}"