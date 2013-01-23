def measure(n=1)
res=0
n.times do

	start_t=Time.now
	yield
	end_t=Time.now
	res+=end_t-start_t
	
	end
res /n
end
