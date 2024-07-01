N,*as=$<.read.split.map(&:to_i)

b = true
m=as.pop
n=as.pop
while !as.empty?
    unless as.delete(m^n)
        b = false
        break
    end
end

puts (b ? 'Yes' : 'No')