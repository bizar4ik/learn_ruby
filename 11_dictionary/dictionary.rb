class Dictionary

  def initialize(hash={})
    @hash=hash

  end

  def entries
    @hash
  end



  def add(str)
  if str.class == String
  @hash[str] = nil
  else
  str.class == Hash
  @hash.merge!(str)

  end

  end

  def keywords
    keys=[]
    @hash.each do |key,val|
      keys.push key
    end
    keys.sort
  end

  def include?(key)
    @hash.include?(key)
  end

  def find(str)
    res={}
      @hash.each do |key,val|
        if key[0..1]==str[0..1]
          res.merge! key=>val

        end
      end
      res


  end

  def printable
    res=[]

    @hash.sort.each do |key,val|

      res.push "[#{key}] \"#{val}\""

    end
res.join("\n")

  end





end