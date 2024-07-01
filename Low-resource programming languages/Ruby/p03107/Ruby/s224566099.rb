@arg = gets.chomp
@dp_table = {}

def calc_erasable_index(pattern)
    res = []
    pattern.scan(/01|10/) do |c|
      res << [c, $~.offset(0)[0]]
    end
    unless @dp_table[pattern]
        @dp_table.store(pattern,@arg.length - pattern.length)
        res.each do |key, value|
            /#{key}/ =~ pattern
            calc_erasable_index($` + $')
        end
    end        
    return @dp_table[pattern]
end
calc_erasable_index(@arg)

print @dp_table.values.max