def upcase(str)
    return str.upcase if str.length <= 1
    str[0].upcase + upcase(str[1..-1])
end

def iterative_upcase(str)
    str.chars.inject("") do |upcased_str, char|
        upcased_str << char.upcase
    end
end

def reverse(str)
    return str if str.length <= 1
    str[-1] + reverse(str[0..-2])
end

def quick_sort(arr)
    return arr if arr.length == 1
    pivot = [arr[0]]
    left = arr.select{|ele| ele < pivot[0]}
    right = arr.select{|ele} ele > pivot[0]}
    quick_sort(left) + pivot + quick_sort(right)
end