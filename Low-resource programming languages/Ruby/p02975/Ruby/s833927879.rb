N,*as=$<.read.split.map(&:to_i)

m=as.pop
n=as.pop
fst=m
while !as.empty?
    unless last = as.delete(m^n)
        puts 'No'
        exit
    end
    m,n = [n,last]
end

if fst == m^n
    puts 'Yes'
else
    puts 'No'
end