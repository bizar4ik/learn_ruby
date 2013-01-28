def translate(str)
  vowels=["a", "e", "y", "u", "o", "i"]
  result=str.split.map do |word|
    i = 0
    while !vowels.include?(word[i, 1])
      word[i, 2] == "qu" ? i += 2 : i += 1
    end
    word[i..-1] + word[0, i] + "ay"
  end
  result.join(" ")
end
