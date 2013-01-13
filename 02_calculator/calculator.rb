def add(add1,add2)
	add1+add2
end


def subtract(add1,add2)
	add1-add2
end

def sum(arr)
	arr.inject(0){|result,elem| result=result+elem}
end

def mult(arr)
	arr.inject(1){|result,elem| result=result*elem}
end

def power(add1,add2)
	add1**add2
end


def fact(numb)
	if (numb>0)
		numb.downto(1).inject(:*)
	else return 0
	end
end
