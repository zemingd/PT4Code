class Node
    attr_accessor :prev, :next, :key
    def initialize key
        @key = key
    end
end

class DoubllyLinkedList
    def initialize
        @head = nil
    end

    def insert key
        node = Node.new key
        node.next = @head
        @head.prev = node if @head
        @head = node 
    end

    def delete key
        return if @head.nil?
        head = @head
        until head.nil? || head.key == key
            head = head.next
        end
        unless head.nil?
            if head.prev
                head.prev.next = head.next
            else
                @head = head.next
            end
            head.next.prev = head.prev if head.next
        end
    end

    def deleteFirst
        return if @head.nil?
        @head = @head.next
        @head.prev = nil
    end

    def deleteLast
        return if @head.nil?
        head = @head
        until head.next.nil?
            head = head.next
        end
        head.prev.next = nil
    end
    
    def keys
        return if @head.nil?
        arr = []
        head = @head
        while true
            arr << head.key
            break if head.next.nil?
            head = head.next
        end
        arr
    end
end

dll = DoubllyLinkedList.new
n = gets.to_i
n.times{
    line = gets.chomp.split
    case line[0]
    when "insert"
        dll.insert line[1]
    when "delete"
        dll.delete line[1]
    when "deleteFirst"
        dll.deleteFirst
    when "deleteLast"
        dll.deleteLast
    end
}
puts dll.keys.join(" ")