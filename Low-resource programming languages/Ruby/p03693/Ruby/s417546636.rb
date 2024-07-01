lines = <<'EOS'
4 3 2
EOS

#lines = $stdin.read
array = lines.split("\n")
r = array[0].split(" ")[0].to_i
g = array[0].split(" ")[1].to_i
b = array[0].split(" ")[2].to_i

S = r*100 + g*10 + b

if S % 4 == 0 and S > 3
  puts "YES"
else
  puts "NO"
end
