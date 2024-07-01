N,*as=$<.read.split.map(&:to_i)

m=as.pop
n=as.pop
last = nil
while !as.empty?
    unless last = as.delete(m^n)
        puts 'No'
        exit
    end
end

if m == last^n
    puts 'Yes'
else
    puts 'No'
end