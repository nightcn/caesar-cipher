
def caesar_cipher(word, shift)
    az_upcase = ('A'..'Z').to_a
    az_lowcase = ('a'..'z').to_a
    
    encrypt = word.split("").map do |letter|
        if az_upcase.include?(letter)
            newIdx = (az_upcase.index(letter) + shift) % 26
            az_upcase[newIdx]
        elsif az_lowcase.include?(letter)
            newIdx = (az_lowcase.index(letter) + shift) % 26 
            az_lowcase[newIdx]
        else
            letter
        end
    end
    encrypt.join("")
end

puts caesar_cipher('What a string!', 5)