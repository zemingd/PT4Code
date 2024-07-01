io = STDIN
SAME=[]
def check(s,t)
  hash={}
  s.zip(t) do |i,j|
    if i==j
      SAME<<i
      next
    end
    return 'No' if SAME.include?(i)
    return 'No' if SAME.include?(j)
    if hash.has_key?(i)
      return 'No' if hash[i]!=j
    else
      return 'No' if hash.values.include?(j)
      hash[i]=j
    end
  end
  'Yes'
end
s=io.gets.chomp.chars
t=io.gets.chomp.chars
puts check(s,t)
