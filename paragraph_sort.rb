# Write a Ruby script that accepts a long string/paragraph
# The script should return a hash with each word as a key and the number of times the word occurs
# in the string as the value
# Account for punctuation and non word characters, find a way to remove these from the output.
# Case insensitve 

def sort(p)
    hashed = {}
    words = p.downcase.split(/\/W/)
    words.each do |word|
        if hashed[word]
            hashed[word] += 1
        elsif word != ''
            hashed[word] = 1
        end
    end
    puts hashed.sort_by {|_key, value| value}.to_h
end

sort("I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. 
      I failed to yield at a crosswalk. I changed lanes at the intersection. 
      I changed lanes without signaling while running a red light and speeding!")

# def words(string)
#     h = Hash.new(0)
#         "I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. 
#          I failed to yield at a crosswalk. I changed lanes at the intersection. 
#          I changed lanes without signaling while running a red light and speeding!".scan(/\w+/) do |w|
#          h[w] += 1
# end
    
# p h 