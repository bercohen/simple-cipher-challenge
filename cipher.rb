class Cipher

  class CipherValidationError < StandardError
  end

  class << self
    
    LETTERS = Array('a'..'z')

    def encode(input, distance: 1)
      letters = LETTERS
      begin
        input.downcase.chars.map { |letter| letters[(letters.index(letter) + distance) % 26]}.join
      rescue
        raise Cipher::CipherValidationError.new
      end
    end

    def decode(input, distance: 1)
      letters = LETTERS
      begin
        input.downcase.chars.map { |letter| letters[(letters.index(letter) - distance) % 26]}.join
      rescue
        raise Cipher::CipherValidationError.new
      end
    end

  end

end
