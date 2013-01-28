class RPNCalculator
  attr_accessor :stack
  def initialize()
    self.stack = []
  end

  def value
    self.stack.last
  end

  def push(val)
    self.stack.push val.to_f
  end


  def plus
    operation(:+)
  end

  def minus
    operation(:-)
  end

  def divide
    operation(:/)
  end

  def times
    operation(:*)
  end


  def tokens(str)
   
    str.split.map do |x|

      case x
      when "+"
        :+
      when "-"
        :-
      when "/"
        :/
      when "*"
        :*
      else x.to_f
      end
    end
   end

  def evaluate(str)
    tokens(str).each do |x|
      case x
      when :+
          plus
      when :-
          minus
      when :/
          divide
      when :*
        times
      else
        push x
      end
      
    end
    value
  end


  def operation(op)
    raise "calculator is empty" unless self.stack.size >= 2

      a = self.stack.pop
      b = self.stack.pop
      case op
      when :+
          res = a + b
      when :-
          res = a - b
      when :/
          res = a / b
      when :*
        res = a * b
      end
      self.stack.push res
  end
  
end