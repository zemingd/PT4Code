N,*as=$<.read.split.map(&:to_i)

m=as.pop
n=as.pop
fst=m
while !as.empty?
    i = as.find_index(m^n)
    unless i
        puts 'No'
        exit
    end
    last = as.delete_at(i)
    m,n = [n,last]
end

if fst == m^n
    puts 'Yes'
else
    puts 'No'
end