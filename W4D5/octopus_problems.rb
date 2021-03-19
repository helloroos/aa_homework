fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr) # O(n^2) Quadratic. 
    sorted = false
    until sorted == true
        sorted = true

        arr.each_with_index do |e, i| # 1
            j = i + 1 # 2
            next if j == arr.length
            if arr[i] > arr[j]
                sorted = false
                arr[i], arr[j] = arr[j], arr[i]
            end
        end
    end
    arr
end

# puts "Sluggish Octopus"
# p sluggish_octopus(fish) # "fiiiissshhhhhh"
# puts

def dominant_octopus(arr) # O(n log n). Divide
    return arr if arr.length < 2

    mid_idx = arr.length / 2
    left = arr.take(mid_idx)
    right = arr.drop(mid_idx)

    sorted_left = dominant_octopus(left)
    sorted_right = dominant_octopus(right)

    sorted = merge(sorted_left, sorted_right)
end

def merge(sorted_left, sorted_right)
    merged = []
    until sorted_left.empty? || sorted_right.empty?
        if sorted_left.first < sorted_right.first
            merged << sorted_left.shift
        else
            merged << sorted_right.shift
        end
    end
    merged + sorted_left + sorted_right
end

puts "Dominant Octopus"
puts dominant_octopus(fish)
puts

# def clever_octopus
# end

# puts "Clever Octopus"
# puts clever_octopus
# puts

# def dancing_octpus
# end

# def slow_dance
# end

# def constant_dance
# end