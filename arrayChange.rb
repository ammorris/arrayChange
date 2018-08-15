# You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.

# Example

# For inputArray = [1, 1, 1], the output should be
# arrayChange(inputArray) = 3.

def arrayChange(a)
    total = 0
    a.each_with_index do |v, i|
        next if i == 0 
        if(v <= a [i-1]) 
            total += (a[i-1] + 1) - a[i]
            a[i] = a[i-1] + 1
        end
    end
    total
end