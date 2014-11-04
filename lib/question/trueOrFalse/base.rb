module Question
	class TrueOrFalse
		attr_accessor :text, :right
		def initialize(args)
			@text = args[:text]
			@right = args[:right]
		end
		
		def to_s
			puts "#{@text} \n-True \n-False \n"
			
		end	
	end
end

if __FILE__ == $0 then 
qq = Question::TrueOrFalse.new({:text=>'2+2=4',:right=>'true'})
qq.to_s
end
