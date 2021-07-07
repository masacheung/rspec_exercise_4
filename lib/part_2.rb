def proper_factors(num)
    ans = []
    (1...num).each do |i|
        if num % i == 0
            ans << i
        end
    end
    ans
end

def aliquot_sum(num)
    proper_factors(num).inject {|al, ele| al + ele}
end

def perfect_number?(num)
    num == aliquot_sum(num)
end

def ideal_numbers(num)
    arr = []
    i = 1
    while arr.length != num
        if perfect_number?(i)
            arr << i
        end
        i += 1
    end
    arr
end