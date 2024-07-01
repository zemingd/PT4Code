i = 1
while line = STDIN.gets
    if (/0/ =~ line)
        break;
    end
    STDOUT.puts "Case #{i}: #{line}"
end