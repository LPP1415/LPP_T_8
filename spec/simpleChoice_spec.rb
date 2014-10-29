require './lib/question/simpleChoice'
module Question
  class SimpleChoice
  describe  Question::SimpleChoice do   
    before :each do
      @sc = Question::SimpleChoice.new(:text => '2 + 2 =',
                                       :right => 4,
                                       :distractor => [9,3,1])
    #Preguntas para el test de la practica 06
	@p1 = Question::SimpleChoice.new(:text =>"¿Cual es la salida del siguiente código Ruby ? \n class Xyz \n    def pots \n     @nice\n   end\n   end\n", :right => 'nil' ,:distractor => ['#<Xyz: 0xa000208>','0','Nunguna de las anteriores'] )
	@p2 = Question::SimpleChoice.new(:text => "La siguiente definici´on de un hash en Ruby es v´alida:

hash_raro = {

[1, 2, 3] => Object.new(),

Hash.new => :toto

}", :right => 'falso', :distractor => 'Cierto')

	@p3 = Question::SimpleChoice.new(:text =>" ¿Cu´al es la salida del siguiente c´odigo Ruby?

class Array

def say_hi

\"HEY!\"

end

end

p [1, \"bob\"].say_hi", :right =>'"HEY!"', :distractor => ['1','bob','Nunguna de las anteriores'] )
	@p4 = Question::SimpleChoize.new(:text => "¿Cu´al es el tipo del objeto en el siguiente c´odigo Ruby?

class Objeto

end
", :right =>'Un objeto', :distractor => ['Una instancia de una clase', 'Una constante', 'Ninguna de las anteriores'] )
	@p5 = Question::SimpleChoice.new(:text => " Es apropiado que una clase Tablero herede de una clase Juego.
", :right => 'Cierto', :distractor => 'Falso')

    end
    context "Creando una pregunta" do
      it "Se crea correctamente" do
        expect(@sc.text) == '2 + 2 ='
        expect(@sc.right) == 4
        expect(@sc.distractor) == [9,3,1]
      end
      it "Se crea correctamente p1" do
	expect(@p1.right) == 'nil'
      end

      it "Has to have the three components" do
       expect { Question::SimpleChoice.new(:text=>'5*8=?')}.to raise_error(ArgumentError)
      end
    end

    context "Whene converting" do
      it "can be converted to html" do
        expect(@sc).to respond_to :to_html
      end

      it "has to produce a reasonable HTML" do
	r= %r{<h3>(.*)<\/h3><br\/><input type=\"radio\" value=\"\d\" name=\"0\"\/>\d.*}
        expect( @sc.to_html ).to match(r)
      end

    end

  end
end
end
