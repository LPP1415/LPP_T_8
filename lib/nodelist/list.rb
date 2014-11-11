include Enumerable
class Lista
  attr_accessor :head, :lastnext
  Node = Struct.new(:value, :next, :father)
  def initialize()
    @head = nil
    @lastnext = nil
  end
  def each
     aux = @head
     while aux != nil
         yield aux.value
         aux = aux.next
     end
  end
  def add(*args)
    args.each do |value|
      if @head == nil then
        @head = Node.new(value, nil, nil)
        @lastnext = @head
      else
        last = Node.new(value, nil, @lastnext)
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
  def to_a
    a_value = Array.new
    pointer = @head
    while pointer.next != nil do
      a_value.push(pointer.value)
      pointer = pointer.next
    end
    a_value.push(pointer.value)
    a_value.to_s
  end
end
if __FILE__ == $0 then
  require '../question/simpleChoice/base'

  lista1 = Lista.new()
  lista1.add(1,2,3)
  lista1.add(4)
  puts "Uso de la función first:"
  puts lista1.first
  puts "-- Estructura de la lista enlazada --"
  puts lista1
  puts "-- -- --"
  puts lista1.to_a

  listQuestion = Lista.new()

	#Preguntas para el test de la practica 06
	p1 = Question::SimpleChoice.new(:text =>"¿Cual es la salida del siguiente código Ruby ? \n class Xyz \n    def pots \n     @nice\n   end\n   end\n", :right => 'nil' ,:distractor => ['#<Xyz: 0xa000208>','0','Nunguna de las anteriores'] )
	p2 = Question::SimpleChoice.new(:text => "La siguiente definici´on de un hash en Ruby es v´alida:hash_raro = {[1, 2, 3] => Object.new(),Hash.new => :toto}", :right => 'falso', :distractor => 'Cierto')
	p3 = Question::SimpleChoice.new(:text =>"¿Cu´al es la salida del siguiente c´odigo Ruby?class Arraydef say_hi\"HEY!\"endendp [1, \"bob\"].say_hi", :right =>'"HEY!"', :distractor => ['1','bob','Nunguna de las anteriores'] )
	p4 = Question::SimpleChoice.new(:text => "¿Cu´al es el tipo del objeto en el siguiente c´odigo Ruby?class Objetoend", :right =>'Un objeto', :distractor => ['Una instancia de una clase', 'Una constante', 'Ninguna de las anteriores'] )
	p5 = Question::SimpleChoice.new(:text => "Es apropiado que una clase Tablero herede de una clase Juego.", :right => 'Cierto', :distractor => 'Falso')

	listQuestion.add(p1,p2,p3,p4,p5)

	puts listQuestion.to_s
	puts "**********"
	puts listQuestion.first.right
	puts "**********"
	puts listQuestion.lastnext
	puts "**********"
    puts listQuestion.each { |o| p o }
    puts listQuestion.is_a? Enumerable


end
