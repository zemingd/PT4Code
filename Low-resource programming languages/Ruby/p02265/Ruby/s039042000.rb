class DoublyLinkedList
    class Ele
        attr_accessor :value, :preview, :next
        def initialize(key)
            @value = key
            @preview = nil
            @next = nil
        end
    end

    def insert(key)
        ele = Ele.new(key)

        unless @first == nil
            @first.preview = ele
            ele.next = @first
        end
        @first = ele
        if @last == nil
            @last = ele
        end
    end

    def delete(key)
        pointer = @first
        pointer = pointer.next until pointer == nil or pointer.value == key

        unless pointer == nil
            if pointer == @first
                deleteFirst
            elsif pointer == @last
                deleteLast
            else
                pointer.next.preview = pointer.preview
                pointer.preview.next = pointer.next
            end
        end
    end

    def deleteFirst
        @last = nil if @last == @first
        @first = @first.next
        @first.preview = nil
    end

    def deleteLast
        @first = nil if @first == @last
        @last = @last.preview
        @last.next = nil
    end

    def showAll
        pointer = @first
        until pointer == nil
            print pointer.value
            print ' ' unless pointer.next == nil
            pointer = pointer.next
        end

        print "\n"
    end
end

dLList = DoublyLinkedList.new
no = gets.to_i
no.times {
    command,key = gets.split
    case command
    when 'insert', 'i'
        dLList.insert(key)
    when 'delete'
        dLList.delete(key)
    when 'deleteFirst'
        dLList.deleteFirst
    when 'deleteLast'
        dLList.deleteLast
    end
}
dLList.showAll