class Tests
    def my_uniq(array)
        res = []
        array.each do |el|
            res << el unless res.include?(el)
        end
        res
    end

    def two_sum(array)
        res = []
        i = 0
        while i < array.length - 1
            j = i + 1
            while j < array.length
                res << [i, j] if array[i] + array[j] == 0
                j += 1
            end
            i += 1
        end
        res 
    end

    def my_transpose(array)
        res = Array.new(array.length) {Array.new(array[0].length)} 
        i = 0
        while i < array.length
            j = 0
            while j < array[i].length 
                res[j][i] = array[i][j]
                j += 1
            end
            i += 1
        end
        res
    end

    def stock_picker(array)
        i = 0
        minimum = nil 
        minimum_idx = 0
        while i < array.length
            if minimum.nil? || array[i] < minimum 
                minimum = array[i]
                minimum_idx = i 
            end
            i += 1
        end
        i = array.length - 1
        maximum = nil 
        maximum_idx = 0
        while i >= 0
            if maximum.nil? || (array[i] > maximum && maximum_idx > minimum_idx)
                maximum = array[i]
                maximum_idx = i 
            end
            i -= 1
        end
        [minimum_idx, maximum_idx]
    end
end