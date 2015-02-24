WEIRD = {
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
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen" ,
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

TENS = {
  0   => "one",
  1   => "ten",
  2   => "hundred",
  3   => "thousand",
  6   => "million",
  9   => "billion",
  12  => "trillion",
  15  => "quadrillion",
  18  => "quintillion",
  21  => "sextillion",
  24  => "septillion",
  27  => "octillion",
  30  => "nonillion",
  33  => "decillion",
  36  => "undecillion",
  39  => "duodecillion",
  42  => "tredecillion",
  45  => "quattuordecillion",
  48  => "quindecillion",
  51  => "sexdecillion",
  54  => "septendecillion",
  57  => "octodecillion",
  60  => "novemdecillion",
  63  => "vigintillion",
  66  => "unvigintillion",
  69  => "duovigintillion",
  72  => "trevigintillion",
  75  => "quattuorvigintillion",
  78  => "quinvigintillion",
  81  => "sexvigintillion",
  84  => "septenvigintillion",
  87  => "octovigintillion",
  90  => "novemvigintillion",
  93  => "trigintillion",
  96  => "untrigintillion",
  99  => "duotrigintillion",
  100 => "googol"
}

def num_in_words(num)
  return WEIRD[num] if WEIRD[num]
  log = Math.log10(num).floor
  until TENS[log]
    log -= 1
  end
  tens_word = TENS[log]
  # puts tens_word
  quotient, dividend = num.divmod(10 ** log)
  # p quotient
  # p dividend
  end_word = num_in_words(dividend)
  end_word = "" if end_word == "zero"
  if tens_word == "ten"
    num_in_words(quotient * 10) + " " + end_word
  else
    [num_in_words(quotient), tens_word, end_word].join(" ").strip
  end
end

[45, 12, 20, 13017, 10007, 0, 200, 255, 120, 123746756745, 326748236874632876462378782763232789372984732987438297439287392834789379847398743974398473979238].each do |n|
  p num_in_words(n)
end
