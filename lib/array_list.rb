# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0]
    @size = 0
    #we are populating the capacity of the array
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    # @storage[@size] = 0
    raise if @size == 0

    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
  end

  def size
    @size
  end

  def max
    max = @storage[0]
    @size.times do |i|
      max = @storage[i] if i > max
    end
  end


  def to_s
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}" + ", "
    end
    return "[#{str[0..-3]}]"
  end
end
