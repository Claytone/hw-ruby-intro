class BookInStock

    attr_accessor :isbn
    attr_accessor :price

    def initialize(_isbn, _price)
        if (_isbn =~ /^(\d+)$/)
            @isbn = _isbn
        else
            raise ArgumentError
        end

        if (_price > 0)
            @price = _price
        else
            raise ArgumentError
        end
    end

    def price_as_string
        return sprintf('$%.2f', @price)
    end
end

book = BookInStock.new("01", 1.1)
puts book.price_as_string
puts book.isbn
puts book.price
