# Author : Fuad Ashraful Mehmet 
#Date: 18th April


n,k=gets.chop.split.map(&:to_i)

def main(num,kk,cnt)

    if num==0
        return 0
    end

    return 1+main(num/kk,kk,cnt)
end
puts main(n,k,0)