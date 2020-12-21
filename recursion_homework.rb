def sum_to(n)
    return nil if n < 1
    return n if n == 1
    n + sum_to(n-1)
end

def add_numbers(nums_array)
    return nums_array[0] if nums_array.length <= 1
    nums_array[0] + add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
    return nil if n < 1
        
    return 1 if n == 1 or n == 2
    
    return 2 if n == 3
    
    (n-1) * gamma_fnc(n-1)
end

def ice_cream_shop(flavors, favorite)
    #operation is ==
    return false if flavors == nil
    return false if flavors.length == 1 and favorite != flavors[0]
    if favorite == flavors[0]
        return true
    else
        ice_cream_shop(flavors[1..-1], favorite)
    end
end

def reverse(string)
    return string if string.length <= 1
    string[-1] += reverse(string[0..-2])
end