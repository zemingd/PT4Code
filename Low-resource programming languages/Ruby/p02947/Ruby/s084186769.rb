n = gets.strip.to_i
s = readlines.map {|line| line.strip.split('').sort }

result = 0

current = s.shift
until s.empty?
  s.each do |tmp_s|
    result+=1 if tmp_s == current
  end
  current = s.shift
end

p result