def word_count(str)
  str.gsub(/[[:punct:]]/, '').split.each_with_object(Hash.new(0)) do |word, counts|
    counts[word.to_sym] += 1
  end
end

input_str = "The quick brown fox jumped over the lazy dog, and the quick brown cat also jumped over the lazy dog.
The quick brown rabbit, however, didn't jump over the lazy dog, but the quick brown squirrel did."

puts word_count(input_str)