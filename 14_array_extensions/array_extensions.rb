class Array


def sum
self.inject(0){|sum,num|sum+=num}

end


def square
  if self.empty?
    self
  else
    self.map{|num| num**2}
  end

end

def square!
	self.map!{|num|num**2}
end
  
end