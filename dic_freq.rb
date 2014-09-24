def match(word="below", dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
  matches = Hash.new(0)
  word.downcase!
  w_arr = word.split("")
  w_arr.to_enum.with_index(0).each do |le, i_le|
    w_arr[i_le..-1].to_enum.with_index(0).each do |li, i_li|
      sub_str = word[i_le..i_li+i_le]
      if dictionary.include?(sub_str)
        matches[sub_str] += 1
      end
    end
  end
  puts matches.to_s
end

match("below")
match("belowit")
match("it_sits")
match("Howdy partner, sit down! How's it going?")
