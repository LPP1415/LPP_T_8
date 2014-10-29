module Question
  class SimpleChoice
    attr_accessor :text, :right, :distractor
    
    def initialize(args)
      @text = args[:text]
      raise ArgumentError , 'arguments error unless text' unless @text
      @right = args[:right]
      raise ArgumentError , 'arguments error unless right'  unless @right
      @distractor = args[:distractor]
      raise ArgumentError , 'arguments error unless distractor' unless @distractor
    end

    def to_html
      options = @distractor+[ @right ]
      #.shuffle baraja el array (sample coge uno al azar)
      options = options.shuffle
      # DELIMITADOR la cadena consta de todo hasta que se encuentra
      # el tag #
      s = ''
      options.each do |option|
        s += %Q{<input type="radio" value="#{option}" name="0"/>#{option}<br/>}
      end

      html = "<h3>#{@text}</h3><br/>#{s}"

    end

    def to_s
	options = @distractor+[@right]
	options = options.shuffle
	puts "#{@text} ? \n "
	options.each do |option|
		"#{option} \n"
	end
      
    end

  end
end

if __FILE__ == $0 then
  #text: hace de , lo que va antes es un simbolo y hace de flechita como un hash#
  qq = Question::SimpleChoice.new({:text=> '2+2=', :right=> 6, :distractor=> [4,5,2]})
puts qq.to_s
# puts qq.to_html
end
