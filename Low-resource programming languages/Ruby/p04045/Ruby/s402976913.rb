input = gets.chomp.split(" ")
N = input.first.split("")
K = input.last.to_i

hate_nums = gets.chomp.split(" ").map(&:to_i)

ans = []

def hasHate(array,num)
    if array.include?(num)
        hasHate(array, num+1)
    else
        return num
    end
end
def getMinimum(array)
    for i in 0..10
        if !array.include?(i)
            return i
        end
    end
end
flag = false
min = getMinimum(hate_nums)

for i in 0..N.length - 1
    if flag
        ans << min
        next
    end
    num = hasHate(hate_nums,N[i].to_i)
    if num > N[i].to_i
        flag = true
        ans << num
    else
        ans << num
    end
end

puts ans.join.to_i