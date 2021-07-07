def my_reject(array, &proc)
    ans = []

    array.each.with_index do |ele, i|
        if !proc.call(ele)
            ans << array[i]
        end
    end
    ans
end

def my_one?(array, &proc)
    count = 0
    array.each do |ele|
        if proc.call(ele)
            count += 1
        end
    end
    
    if count == 1
        return true
    else
        return false
    end
end

def hash_select(hash, &proc)
    new_hash = {}

    hash.each do |k, v|
        if proc.call(k, v)
            new_hash[k] = v
        end
    end
    new_hash
end

def xor_select(array, p1, p2)
    ans = []
    array.each do |ele|
        if (p1.call(ele) || p2.call(ele)) && !(p1.call(ele) && p2.call(ele))
            ans << ele        
        end
    end
    ans
end

def proc_count(val, array)
    count = 0
    array.each do |proc|
        if proc.call(val)
            count += 1
        end
    end
    count
end