require './lib/question/simpleChoice'
module Question
  class SimpleChoice
  describe  Question::SimpleChoice do   
    before :each do
      @sc = Question::SimpleChoice.new(:text => '2 + 2 =',
                                       :right => 4,
                                       :distractor => [9,3,1])
    end
    context "Creando una pregunta" do
      it "Se crea correctamente" do
        expect(@sc.text) == '2 + 2 ='
        expect(@sc.right) == 4
        expect(@sc.distractor) == [9,3,1]
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
