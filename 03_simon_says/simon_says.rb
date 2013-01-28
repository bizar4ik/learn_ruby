def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n = nil)
	if (n == nil)
		((str + " ") * 2).strip
	else ((str + " ") * n).strip
	end
end

def start_of_word(str, n)
	str[0..n-1]
end

def first_word(str)
	str.split[0]
end

def titleize (str)
	litle_mass=["the", "over", "and"]
	result = []
	words = str.split(" ")
	n = words.size
	result.push words[0].capitalize
	words[1..n].each do |word|
		if litle_mass.include? word
			result.push word
		else result.push word.capitalize
		end
	end
  result.join(" ")
end
