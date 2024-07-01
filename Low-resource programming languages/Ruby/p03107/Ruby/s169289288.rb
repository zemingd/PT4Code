@arg = gets.chomp
@arg_len = @arg.length
@dp_table = {}

def calc_erasable_index(pattern)
    res = {}
    pattern.scan(/01|10/) do |c|
      res.store(c, $~.offset(0)[0])
    end
    unless @dp_table[pattern]
        @dp_table.store(pattern,@arg_len - pattern.length)
        res.each do |key, value|
            #/#{key}/ =~ pattern
            calc_erasable_index(erase_pattern_from_str(pattern,value,value+1))                  #calc_erasable_index($` + $')
        end
    end        
    return 0
end

def erase_pattern_from_str(str,start_idx, end_idx)
    if(str.length == (end_idx - start_idx + 1))
        return ""
    end
    if(start_idx <= 0)
        return str.slice(end_idx+1..str.length)
    end
    if(str.length - 1 <= end_idx)
        return str.slice(0..start_idx-1)
    end
    return str.slice(0..start_idx-1) + str.slice(end_idx+1..str.length)     
     
end



start_time = Time.now
calc_erasable_index(@arg)
print @dp_table.values.max