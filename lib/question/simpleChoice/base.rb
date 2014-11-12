if __FILE__ == $0 then
  $: << "."
end
require "question/questionFather/base"
  class SimpleChoice < QuestionFather
    def initialize(args)
        super
    end

    def to_html
      options = @distractor+[ @right ]
      options = options.shuffle
      options.each do |option|
        s += %Q{<input type="radio" value="#{option}" name="0"/>#{option}<br/>}
      end

      "<h3>#{@text}</h3><br/>#{s}"
    end

    def to_s
	  options = @distractor+[@right]
	  options = options.shuffle
	  puts "#{@text} ?"
	  options.each do |option|
	    "#{option}"
	  end
    end
  end


  if __FILE__ == $0 then
    qq = SimpleChoice.new({:text=> '2+2=', :right=> 6, :distractor=> [4,5,2], :dif => 4})
    q1 = SimpleChoice.new({:text=> '9*7/2=', :right=> 6, :distractor=> [4,5,2], :dif => 9})
    puts qq.to_s
    puts "****"
    puts qq <=> q1
  end
