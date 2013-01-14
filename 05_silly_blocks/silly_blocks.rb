def reverser
words=yield
result=[]
	words.split.map do |word|
		 result.push word.reverse	 
	end
result.join(" ")
end

def adder(num=1)
	yield+num
end

def repeater(num=1)
	num.times do
	yield
end

end
