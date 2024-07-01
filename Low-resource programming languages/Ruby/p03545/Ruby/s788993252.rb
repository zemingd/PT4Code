$inputs = '1222'.split('').map(&:to_i)
$target = 7

def prepare
    $inputs = STDIN.gets.chomp.split('').map(&:to_i)
end

def dfs(depth, value, form)
    if depth == $inputs.count
        if value == $target
            return true, form + '=' + $target.to_s
        else
            return false, form
        end
    end

    result1, form1 = dfs depth + 1, value + $inputs[depth],
        (depth > 0 ? form + '+' : '') + $inputs[depth].to_s
    if result1 == true
        return result1, form1
    end

    result2, form2 = dfs depth + 1, value - $inputs[depth],
        (depth > 0 ? form + '-' : '') + $inputs[depth].to_s
    if result2 == true
        return result2, form2
    end

    return false, ''
end

def solve
    result, form = dfs 0, 0, ''
    if result == true
        puts form
    end
end

prepare
solve
