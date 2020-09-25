
def sluggish_octopus(fishes)
    fl = fishes.first

    i = 0
    while i < fishes.length 
        f1 = fishes[i]

        j = i + 1
        while j < fishes.length - 1
            f2 = fishes[j]

            if f1.length > f2.length && f1.length > fl.length 
                fl = f1 
            elsif f2.length > f1.length && f2.length > fl.length
                fl = f2 
            end

            j += 1
        end

        i += 1
    end
    fl  
end



class Array

    def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if self.length < 2

    mid_idx = self.length / 2
    sorted_left = self.take(mid_idx).merge_sort(&prc)
    sorted_right = self.drop(mid_idx).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  
  def merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged + left + right
  end
end

def dominant_octopus(fishes)
    sorted = fishes.mergh_sort {|y, x| x <=> y}
    sorted[0]
end



def clever_octopus(fishes)
    longest_fish = fishes.first
    
    fishes.each do |fish|
        longest_fish = fish if longest_fish.length < fish.length
    end
    
    longest_fish
end

tiles_arr = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_arr)
    tiles_arr.each_with_index do |tile, i|
        return i if dir == tile 
    end
end

def constant_dance(dir, tiles_arr)
    tiles_arr.index(dir)
end