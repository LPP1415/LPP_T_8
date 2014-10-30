class Lista
	attr_accessor :head, :lastnext	
	Node = Struct.new(:value, :next)	
	def initialize()
		@head = nil
		@lastnext = nil
	end

	def add(*args)
		args.each do |value|
			if @head == nil	then
				@head = Node.new(value, nil)
				@lastnext = @head
			else 
				last = Node.new(value, nil)
				@lastnext.next = last
				@lastnext = last
			end 
		end
	end
	def first
    @head.value
	end
	def to_s
		"#{@head}"
	end		
end

if __FILE__ == $0 then
	lista1 = Lista.new()
	lista1.add(1,2,3)
	lista1.add(4)
	puts "Uso de la función first:"
	puts lista1.first
	puts "-- Estructura de la lista enlazada --"
  puts lista1
  puts "-- -- --"
end
