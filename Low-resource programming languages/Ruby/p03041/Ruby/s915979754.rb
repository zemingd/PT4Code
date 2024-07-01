numbers = gets
capline = gets

length, num = numbers.split(/\s/).map(&:to_i)
caps = capline.split("")

if caps[num-1] == "A"
    caps[num-1] = "a"
end

if caps[num-1] == "B"
    caps[num-1] = "b"
end

if caps[num-1] == "C"
    caps[num-1] = "c"
end

puts(caps.join(''))