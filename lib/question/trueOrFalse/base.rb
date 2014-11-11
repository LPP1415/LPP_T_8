if __FILE__ == $0 then
    require "../questionFather/base"
end
module Question
	class TrueOrFalse < QuestionFather
		def initialize(args)
			super
		end
		def to_s
			"#{@text} \n-True \n-False \n"
		end
	end
end

if __FILE__ == $0 then
	qq = Question::TrueOrFalse.new({:text=>'2+2=4',:right=>'true',:dif => 5})
  q1 = Question::TrueOrFalse.new({:text=>'Capital de españa es madrid',:right=>'true',:dif => 5})
  puts qq.to_s
  puts "***"
  puts qq <=> q1
end
