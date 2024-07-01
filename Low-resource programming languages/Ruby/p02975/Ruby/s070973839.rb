N,*as=$<.read.split.map(&:to_i)

x=m=as.shift
n=as.shift
h=Hash.new(0)
as.each { |a| h[a]+=1 }

puts 'Yes'
exit 0

as.length.times do
    if h[m^n] == 0
        puts 'No'
        exit
    end
    h[m^n] -= 1
    m,n = [n,m^n]
end

if (m^n)==x
    puts 'Yes'
else
    puts 'No'
end