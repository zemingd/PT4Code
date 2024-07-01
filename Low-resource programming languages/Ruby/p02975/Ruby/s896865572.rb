N,*as=$<.read.split.map(&:to_i)

m=as.pop
n=as.pop
# x=m^n
h=Hash.new(0)
as.each do |a|
    h[a]+=1
end

as.length.times do
    if h[m^n] == 0
        puts 'No'
        exit
    end
    h[m^n] -= 1
    m,n = [n,m^n]
end

# if x == n
    puts 'Yes'
# else
#     puts 'No'
# end