list = []

n = gets.to_i
n.times{
    cmd, x = gets.split
    x = x.to_i
    case cmd
    when "insert"
        list.unshift(x)
    when "delete"
        idx = list.index(x)
        list.delete_at(idx) if idx
    when "deleteFirst"
        list.shift
    when "deleteLast"
        list.pop
    end
}
puts list.join(' ')
