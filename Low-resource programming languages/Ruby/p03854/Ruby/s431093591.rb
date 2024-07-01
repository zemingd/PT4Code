require 'strscan'

scanner = StringScanner.new(ARGF.gets.chomp)

until scanner.eos?
  if scanner.scan(/dream|erase/)
    break if scanner.rest.empty?
    if (scanner.post_match[0..6]).match(/dream|dreamer|erase|eraser/)
      next
    else
      scanner.unscan
      scanner.scan(/dreamer|eraser/)
    end
  else
    puts "NO"
    exit
  end
end

puts "YES"
