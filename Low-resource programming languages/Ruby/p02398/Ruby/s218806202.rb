a = gets.split(" ").map{|x| x.to_i}
counter=0
for i in a[0]...a[1]
        if a[2]%i==0
                counter+=1
        end
end

print("#{counter}\n")