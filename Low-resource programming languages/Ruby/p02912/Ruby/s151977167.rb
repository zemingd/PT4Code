n,m=gets.chomp.split(" ").map(&:to_i)

a_array=gets.chomp.split(" ").map(&:to_f).sort {|a, b| b <=> a }
if n == 1
    puts (a_array[0] / (2 ** m)).to_i
    exit
end

queue = Hash.new{|hash, key| hash[key] = []}
key = 1
a_array.each do |e|
    while true
        if a_array[0] / (2 ** key) <= e
            break
        else
            key += 1
        end
    end
    queue[key].push(e)
end

def merge_sort(left, right)
    return left if right.empty?
    return right if left.empty?
    len = left.length + right.length
    lv = left.shift
    rv = right.shift
    len.times.map{
        if lv > rv
            lv.tap{ lv = left.empty? ? (right.empty? ? rv : right.last) : left.shift }
        else
            rv.tap{ rv = right.empty? ? (left.empty? ? lv : left.last) : right.shift }
        end
    }
end
  
target = 1
while m > 0 do
    if m <= queue[target].length
        (0..(m-1)).each do |i|
            queue[target][i] = queue[target][i] / 2
        end
        break
    else
        divided = queue[target].map {|e| e / 2 }
        m = m - divided.length
        queue[target+1] = merge_sort(queue[target+1], divided)
        queue.delete(target)
    end
    target += 1
end

puts queue.values.flatten.map(&:to_i).inject(&:+)

