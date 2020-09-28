# class Map
#     def initialize
#         @my_map = Array.new
#     end

#     def my_map
#         @my_map
#     end

#     def set(key, value)
#         @my_map.each do |pair|
#             if pair.first == key
#                 pair.last = value
#             end  
#         end
        
#         @my_map << [key, value] if @my_map.none? {|pair| pair.first == key}
#     end

#     def get(key)
#         @my_map.each do |pair|
#             return pair.last if pair.first == key
#         end
#         nil
#     end

#     def delete(key)
#         @my_map.reject! {|pair| pair.first == key}
#     end

#     def show
#         #not sure what to show here :()
#     end
# end


class Map
    def initialize
        @my_map = []
    end

    def set(key, value)
        @my_map.each do |pair|
            pair.last = value if pair.first == key
        end
        @my_map << [key, value]
        value  
    end 

    def get(key)
        @my_map.each do |pair|
            return pair.last if pair.first == key
        end 
        nil 
    end

    def delete(key)
        value = get(key)
        @my_map.reject! {|pair| pair.first == key}
        value 
    end

    def show
        deep_dup(@my_map)
    end 

    def deep_dup(arr)
        dup = []

        arr.each do |ele|
            if !ele.is_a? Array
                dup << ele 
            else  
                dup << deep_dup(ele)
            end 
        end 
        dup 
    end
end
