def binary_multiple_of_4? s
    if ( s =~ /([01]+)/ )
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

puts binary_multiple_of_4?('1011')