class Book

  def title
    @title
  end

  def title=(name)
    res = []
    litle_words = ["and", "the", "a", "an", "in", "of"]
    words = name.split(" ")
    n = words.size

   res.push words[0].capitalize
    words[1..n].each do |word|
      if litle_words.include? word
        res.push word
      else  res.push word.capitalize
      end
    end
    @title = res.join(" ")
  end
end