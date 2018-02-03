# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.inject(0){|current, element| current+element}
end
def max_2_sum arr
    if (arr.length == 0)
        return 0
    elsif (arr.length == 1)
        return arr[0]
    elsif (arr.length == 2)
        return (arr[0] + arr[1])
    end

    max1 = arr[0]
    max2 = arr[1]
    i = 2
    until ( i == arr.length )
        if ( arr[i] > max1 )
            max2 = max1
            max1 = arr[i]
        elsif (arr[i] > max2 )
            max2 = arr[i]
        end
        i+=1
    end

    return (max1 + max2)
end

def sum_to_n? arr, n
    if (arr.length < 2)
        return false
    end

    i = 1
    until (i == arr.length)
        if ((arr[0] + arr[i]) == n)
            return true
        end
        i+=1
    end
    return sum_to_n?(arr.drop(1), n)
end

# Part 2

def hello(name)
    return 'Hello, ' + name
end

def starts_with_consonant? s
    if (s.length == 0 )
        return false
    end

    if (s=~ /^(\w{1})(.*)$/) #must start with a letter
        if (s =~/^([AEIOUaeiou]{1})(.*)$/) #starts with vowel
            return false
        else
            return true
        end
    else #non-letter start
        return false
    end
end

def binary_multiple_of_4? s
    if ( s =~ /^([01]+)$/ )
        num = (s.unpack("B*"))[0].to_i
        if (num%4 == 0)
            return true
        else
            return false
        end
    else
        return false
    end
end

# Part 3

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
