io = STDIN
s=io.gets.chomp
ar=s.split(//)
puts ar.count("+")-ar.count("-")
