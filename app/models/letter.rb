class Letter
  class << self
    def all
      ("a".."z").map {|char| Letter.new(char)}
    end

    def find_by params
      all.detect {|letter| letter.char == params[:char]&.downcase }
    end
  end

  attr_reader :char

  def initialize char
    @char = char
  end

  def products
    Product.where("name LIKE ?", "#{char}%")
  end
end
