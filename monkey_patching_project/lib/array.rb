# Monkey-Patch Ruby's existing Array class to add your own custom methods 
class Array

    def span
        return nil if self == []
        return self.max - self.min
    end

    def average
        return nil if self == []
        return self.sum / self.length.to_f
    end

    def median
        return nil if self == []
        return self.sort[((self.length / 2).to_f.floor).to_f] if self.length.odd?
        return (self.sort[self.length / 2] + self.sort[(self.length / 2) - 1]) / 2.0  if self.length.even?
    end

    def counts
        hash = Hash.new(0)
        self.each { |ele| hash[ele] += 1 }
        hash
    end

    def my_count(x)
        count = 0
        self.each { |ele| count += 1 if ele == x }
        count
    end

    def my_index(x)
        self.each_with_index { |ele, i| return i if x == ele }
        nil
    end
    
    def my_uniq
        new_arr = []
        self.each { |ele| new_arr << ele if !(new_arr.include?(ele)) }
        new_arr
    end

    def my_transpose

        # take [0][3] and make it [3][0]

        # h = self.length
        # w = self[0].length
        # new_arr = Array.new(h)

        # (h - 1).downto(0).each do |x|
        #     (h - 1).downto(0).each do |y|
        #         new_arr[x] << self[y][x]
        #     end
        # end

        # new_arr

        self.first.zip(*self[1..-1])

    end

  
end
