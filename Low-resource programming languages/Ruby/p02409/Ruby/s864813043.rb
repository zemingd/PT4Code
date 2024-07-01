Id = Struct.new(:building, :floor, :room_number)

Room = Struct.new(:id, :people_count)

Rooms = Struct.new(:rooms) do
  def self.initial
    all = 4.times.flat_map{|building|
      3.times.flat_map{|floor|
        10.times.flat_map{|room_number|
          Room.new(Id.new(building+1, floor+1, room_number+1), 0)
        }
      }
    }.map {|r|
      [r.id, r]
    }.to_h

    new(all)
  end

  def [](id)
    rooms[id]
  end

  def values
    rooms.values
  end
end

rooms = Rooms.initial

gets.to_i.times{
  b, f, r, v = gets.split.map(&:to_i)

  id = Id.new(b, f, r)
  room = rooms[id]

  room.people_count += v
}

puts rooms.values.group_by{|r| r.id.building }.map{|_, rooms|
  rooms.group_by{|r| r.id.floor }.map{|_, rooms|
    ' ' + rooms.map(&:people_count)*' '
  }.join("\n")
}.join("\n#{?# * 20}\n")

