def even_next(n)
    n / 2
end

def odd_next(n)
    (3 * n) + 1
end

def next_value(n)
    if n % 2 == 0
        num = even_next(n)
    else
        num = odd_next(n)
    end

    num
end

def collatz(n)

    array = [n]

    while n != 1
        n = next_value(n)
        array << n
    end

    array
end

def longest_collatz
    longest_length = 0
    
    i = 2

    while i < 1000001
        length = collatz(i).length()

        if length > longest_length
            longest_length = length
            longest_num = i
        end
        i += 1
    end

    longest_num
end