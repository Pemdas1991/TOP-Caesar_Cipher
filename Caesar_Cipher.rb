def cap_in_range(code) 
    if code> 90
        newCode= code-26
        return cap_in_range(newCode)
    end
    if code < 65 
        newCode = code + 26
        return cap_in_range(newCode)
    end
    return code
end

def low_in_range(code)
    if code > 122
        newCode = code -26
        return low_in_range(newCode)
    end
    if code < 97 
        newCode = code + 26
        return low_in_range(newCode)
    end
    return code
end

def caesar_cipher(inputString, offset = 0) 

    puts "#{inputString} should be offset by #{offset}"

    convertedArray = inputString.bytes.map do |uni| 
        code= uni + offset
        if uni> 64 && uni< 91
            cap_in_range(code)
        elsif uni> 96  && uni< 123
            low_in_range(code)

        else 
            uni

        end
    end  

    convertedString = convertedArray.map { |byte|  byte.chr}
    convertedString.join

end