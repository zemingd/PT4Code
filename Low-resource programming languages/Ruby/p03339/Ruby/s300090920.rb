n = gets.chomp.to_i
s = gets.chomp.split("")
east = [0]
west = [0]

s.each_with_index do |e, i|
    if e === "W" then
        west << west[i] + 1
        east << east[i]
    else
        west << west[i]
        east << east[i] + 1
    end
end

ans = []

1.upto(n) do |i|
    ans << east[-1]-east[i] + west[i-1]
end

print ans.min