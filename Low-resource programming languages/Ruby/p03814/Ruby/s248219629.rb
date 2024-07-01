str = STDIN.gets.chomp
len = str.rindex('Z') - str.index('A') + 1
STDOUT.puts len.to_s