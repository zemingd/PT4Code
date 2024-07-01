@arg = gets.chomp
@arg_len = @arg.length
@dp_table = {}

def calc_erasable_index(pattern)
    res = []
    pattern.scan(/01|10/) do |c|
      res << [c, $~.offset(0)[0]]
    end
    unless @dp_table[pattern]
        @dp_table.store(pattern,@arg_len - pattern.length)
        res.each do |key, value|
            /#{key}/ =~ pattern
            calc_erasable_index($` + $')
        end
    end        
    return 0
end
calc_erasable_index(@arg)

print @dp_table.values.max