require 'pry-byebug'
require 'rb-readline'

class Triangle
  attr_accessor :sides

  def initialize(arg)
    @sides = split_input(arg)
  end

  def initialize_copy(obj)
    @sides = obj.sides.dup
  end

  def which_category?
    return '三角形じゃないです＞＜' unless triangle?
    return '正三角形ですね！' if equilateral?
    return '二等辺三角形ですね！' if isosceles?
    '不等辺三角形ですね！' if scalene?
  end

  private

  def triangle?
    max_side = sides.max
    temp_sides = sides.dup
    temp_sides.delete_at(sides.index(max_side))
    max_side < temp_sides[0] + temp_sides[1]
  end

  def equilateral?
    sides.uniq.length == 1
  end

  def isosceles?
    sides.uniq.length == 2
  end

  def scalene?
    sides.uniq.length == 3
  end

  def split_input(input)
    input.map { |i| i.sub(',', '').to_f }
  end
end

Triangle.new(ARGV).which_category? unless ARGV.empty?
