#Warmup
def range(start, en)
    return [] if en < start
    return [en] if en == start
    [start] + range((start+1), en)
end

def sum_iter(arr)
    sum = 0
    arr.map{|num| sum += num }
    return sum
end

def sum_recur(arr)
    return arr[0] if arr.length == 1
    arr[0] + sum_recur(arr[1..-1])
end

#Exponentiation
def exp1(num, pow)
    return 0 if num == 0
    return 1 if pow == 0
    return num if pow == 1
    return (num * num) if pow == 2
    num * exp(num, pow-1)
end

def exp2(num, pow)
    return 0 if num == 0
    return 1 if pow == 0
    return num if pow == 1
    return (num * num) if pow == 2
    return exp(num, (pow / 2)) * exp(num, (pow / 2)) if pow % 2 == 0
    return num * (exp(num, (pow-1) / 2 ) * (exp(num, (pow-1) / 2 ))) if pow % 2 != 0
end

# def deep_dup(arr)
#     map {|arr| arr.deep_dup}
#   end

# p org = [["nuts", "bolts", "washers"],  ["capacitors", "resistors", "inductors"]]
# dup = deep_dup(org)
# dup[1] << "LEDs"
# p dup
# p org

def fib_rec(n)
    return [0] if n == 0
    return [1] if n == 1

    return [1, 1] if n == 2
    fib_rec(n-1) + [(fib_rec(n-1)[-1] + fib_rec(n-1)[-2])]
end

p fib_rec(12)

def isPalindrome?(string)
	#strip/clean string

	if string[0] != string[-1] 
		return false
	elsif string[0] == string[-1] and string.length <= 2
		return true
	end

	isPalindrome?(string[1..-2])
end

def quicksort(arr)
    return arr if arr.length <= 1
    pivot = [arr[0]]
    left = arr[1..-1].select{|ele| ele < pivot[0]}
    right = arr[1..-1].select{|ele| ele >= pivot[0]}
    quicksort(left) + pivot + quicksort(right)
end

def bsearch(arr, target)
    return nil if !arr.include? target
    s = arr.sort()
    mid = (arr.length/2) + (arr.length/2 % 2) -1

    return s.index(target) if target == s[mid]

    left = s[0...mid]
    right = s[mid+1..-1]

    if target < s[mid]
        bsearch(left, target)
    else
        bsearch(right, target) + mid + 1
    end
end

def merge_sort(arr)
    return arr if arr.length == 1
    mid = arr.length/2
    left = arr[0...mid]
    right = arr[mid..-1]

    merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
    results = []
    until left.empty? or right.empty?
        if left[0] <= right[0]
            results << left.shift
        else
            results << right.shift
        end
    end
    return results + left + right
end

# gg. look up solutions to problems unsolved

def make_change(amount, coins = [25, 10, 5, 1])
    return coins[1..-1] if amount == 0
    if amount - coins[0] >= 0
        amount -= coins[0]
        coins << coins[0]
    else
        coins.shift
    end
    make_change(amount, coins)
end

p make_change(191, coins = [25, 10, 5, 1])