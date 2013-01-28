class XmlDocument
  attr_accessor :level, :indents

  def initialize(indents = false)
    self.indents = indents
    self.level = 0
  end
 

  def render(method, hash = {},&block)
    hash_res = hash.map do |key,val|
      "#{key}='#{val}'"
    end.join()

    if block
      open_tag = ("  " * self.level) + (hash.size == 0 ? "<#{method}>" : "<#{method} #{hash_res}>")+(self.indents ? "\n" : "")
      self.level += 1 if self.indents
      text = yield
      self.level -= 1 if self.indents
      close_tag = ("  " * self.level) + "</#{method}>" + (self.indents ? "\n":"")
      [open_tag,text,close_tag].join()
    
    else
     ("  " * self.level) + (hash.size == 0 ? "<#{method}/>" : "<#{method} #{hash_res}/>")+(self.indents ? "\n":"")
    end
  end

  def method_missing(method_name, *args, &block)
    render(method_name, *args, &block)
  end

end