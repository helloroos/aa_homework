class Map

    attr_reader :subarr

    def initialize
        @map_arr = []
    end

    def set(key, value)
        @map_arr.each do |subarr|
            if subarr.first == key
                subarr.last += value
            else
                @map_arr << [key, value]
            end
        end
    end

    def get(key)
        @map_arr.each { |subarr| return subarr if subarr.first == key }
    end

    def delete(key)
        @map_arr.each { |subarr| @map_arr.delete(subarr) if subarr.first == key }
    end

    def show
        @map_arr
    end

end

m = Map.new