def cesar(text, shift)
  shift %= "z".ord - "a".ord #make shift a number between 0 and 25
  text.split("").each do |letter|
    if letter.match /[A-Za-z]/
      upcase = letter.upcase == letter ? true : false
      letter.upcase!
      new_letter = nil
      if shift >= 0
        if (((letter.ord + shift) > "Z".ord) && (letter <= "Z"))
          new_letter = ("A".ord + shift - ("Z".ord - letter.ord) -1).chr
        end
      else #case when shift < 0
        if (((letter.ord + shift) < "A".ord) && (letter >= "A"))
          new_letter = ("Z".ord + shift + (letter.ord - "A".ord) +1).chr
        end
      end
      new_letter ||= (letter.ord + shift).chr
      upcase ? print(new_letter) : print(new_letter.downcase)
    else
      print letter 
    end
  end
  puts
end

puts "write the text to cypher"
txt = gets.chomp
puts "write the value to shift"
num = gets.chomp.to_i
cesar(txt, num)
