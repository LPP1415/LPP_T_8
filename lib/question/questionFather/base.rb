# encoding: UTF-8
	class QuestionFather
		include Comparable
		attr_accessor :text, :right, :distractor,:dif

		def initialize(args)
			@text = args[:text]
			@right = args[:right]
			@distractor = args[:distractor]
			@dif = args[:dif]
		end
		def to_s
			@text
		end
		def <=>(other)
			self.dif <=> other.dif
		end
	end

if __FILE__ == $0 then
	qq = QuestionFather.new({:text=>'2+2=4',:right=>'true',:dif =>5})
	q2 = QuestionFather.new({:text=>'2+2=4',:right=>'true',:dif =>4})
	puts qq.to_s
	puts qq <=> q2
end
