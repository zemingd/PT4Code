n,k=gets.split.map &:to_i
arr=gets.split.map &:to_i
p n<=k ? 0 : arr.reverse.sort.slice(0,n-k).inject(:+)