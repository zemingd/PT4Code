N,*as=$<.read.split.map(&:to_i)

x=m=as.pop
n=as.pop
h=Hash.new(0)
as.each { |a| h[a]+=1 }

as.length.times do
    if h[m^n] == 0
        puts 'No'
        exit
    end
    h[m^n] -= 1
    m,n = [n,m^n]
end

puts 'Yes'
# if (m^n)==x
#     puts 'Yes'
# else
#     puts 'No'
# end