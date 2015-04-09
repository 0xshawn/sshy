require 'colorize'

module Sshy
  class Data
    def initialize(array, width = 3)
      @data = to_nested_array array, width

      #@data = [['server01', 'server02', 'server09'],
      #         ['server03', 'server04', 'server00', 'hahaha'],
      #         ['server05'],
      #         ['server03', 'server04', 'server00', 'hahaha'],
      #         ['server07', 'server08'],
      #         ['server11', 'server12', '000000', '222', '1', '2']]
      @location = [0, 2]
    end

    def to_nested_array(array, width)
      length = array.length
      rows = []
      tmp_array = []
      i = 0
      while i < length do
        j = 0
        while j < width do
          tmp_array << array[i] if i < length
          j += 1
          i += 1
        end
        rows << tmp_array
        tmp_array = []
      end
      rows
    end

    def move(key)
      case key
      when ""
      when 'up'
        move_up
      when 'down'
        move_down
      when 'left'
        move_left
      when 'right'
        move_right
      end
    end

    def output
      data = Marshal.load(Marshal.dump(@data))

      # location check, if there is element in data
      length = data[@location[1]].length - 1
      if @location[0] > length
        @location[0] = length
      end

      data[@location[1]][@location[0]] =
        data[@location[1]][@location[0]].colorize(:color => :red, :mode => :bold)

      return data
    end

    def length
      return @data.length
    end

    def move_up
      @location[1] -= 1 if @location[1] > 0
    end

    def move_down
      @location[1] += 1 if @location[1] < (@data.length - 1)
    end

    def move_left
      @location[0] -= 1 if @location[0] > 0
    end

    def move_right
      @location[0] += 1 if @location[0] < (@data[@location[1]].length - 1)
    end

    def location
      @location
    end

    def data
      @data
    end

    private :move_up, :move_down, :move_left, :move_right
  end
end
