class Cipher

  class CipherValidationError < StandardError
  end

  class << self

    def encode(input, distance: 1)
      letters = ('a'..'z').to_a
      begin
        input.downcase.chars.map { |letter| letters[(letters.index(letter) + distance) % 26]}.join
      rescue
        raise Cipher::CipherValidationError.new
      end
    end

    def decode(input, distance: 1)
      letters = ('a'..'z').to_a
      begin
        input.downcase.chars.map { |letter| letters[(letters.index(letter) - distance) % 26]}.join
      rescue
        raise Cipher::CipherValidationError.new
      end
    end

  end

end
