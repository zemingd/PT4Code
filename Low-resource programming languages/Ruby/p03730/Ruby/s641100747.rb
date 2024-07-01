def main stdin
  input = stdin.split("\n")[0]
  a,b,c = input.split(' ').map { |s| s.to_i }
  (1..100).each do |i|
    if (a * i) % b == c then
      puts "YES"
      return
    end
  end

  puts "NO"
end

main $stdin.read
