def substrings words, array

  def correct_word word
    string = ""
    word.length.times do |n|
      break unless ('a'..'z').include? word[n]
      string += word[n]
    end

    string
  end

  words = words.downcase.split " "
  words.length.times {|n| words[n] = correct_word words[n]} 

  hash = Hash.new(0)
  words.each do |word|
    array.length.times do |x|
      hash[array[x]] += 1 if word.downcase.include? array[x].downcase
    end
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary).sort.to_h
