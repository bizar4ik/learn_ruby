class Integer
@@ONE = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
}

@@TEEN = {
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}
@@TEN = {
  10 =>"ten",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

@@HUNDRED = {
  100 =>"hundred",
  1_000 => "thousand",
  1_000_000 => "million",
  1_000_000_000 => "billion",
  1_000_000_000_000 => "trillion"
}

  def in_words
    if (self < 10)
      @@ONE[self]

    elsif (self < 20)
      @@TEEN[self]

    elsif (self < 100)
      if(self % 10 != 0)
       @@TEN[(self / 10) * 10] + " "+ (self % 10).in_words
      else  @@TEN[self]
      end
    else
      found = find_hundred
      founded = (self / found).in_words + " " + @@HUNDRED[found]
      if (self % found != 0)
        founded + " " + (self % found).in_words
      else  founded
      end
    end
  end

  def find_hundred
   @@HUNDRED.keys.sort.take_while { |found|found <= self  }.last
  end
  
end







