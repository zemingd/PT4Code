# Your code here!
strArr = gets.split(" ")
cntArr = gets.split(" ")
strHash = {}
for i in 0..1 do
    strHash.store(strArr[i], cntArr[i].to_i)
end
declementStr = gets
strHash[declementStr] = strHash[declementStr] - 1
outputArr = []
strHash.map do |k, v|
    outputArr.push(v)
end
puts outputArr.join(" ")