class LRUCache
    def initialize(size)
        @size = size
        @cache = []
    end

    def count
        @cache.length
    end

    def add(el)
        if @cache.include?(el)
            return
        else  
            @cache << el
        end 
    end

    def show
        puts @cache
    end 

    private

end 