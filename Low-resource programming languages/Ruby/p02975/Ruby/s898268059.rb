N,*as=$<.read.split.map(&:to_i)

b = true
m=as.pop
n=as.pop
last = nil
while !as.empty?
    unless last = as.delete(m^n)
        b = false
        break
    end
end

b = false if m != last^n
puts (b ? 'Yes' : 'No')