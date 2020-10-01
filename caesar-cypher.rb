lowerCaseChars = [*'a' .. 'z'].to_a
upperCaseChars = [*'A' .. 'Z'].to_a
puts "Enter a string:"
str = gets.chomp
puts "Enter a shift amount:"
shiftAmount = gets.to_i


newString = ""
str.each_char do |char|
    if lowerCaseChars.index(char) != nil
        index=lowerCaseChars.index(char)
        newString += lowerCaseChars[(index + shiftAmount) % 26].to_s
    elsif upperCaseChars.index(char) != nil
        index=upperCaseChars.index(char)
        newString += upperCaseChars[(index + shiftAmount) % 25].to_s
    else
        newString += char
    end
end
p  newString