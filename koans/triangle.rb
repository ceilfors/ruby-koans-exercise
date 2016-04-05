# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # Validation
  args = [a, b, c].sort
  if args.include?(0) or
      args.index { |d| d < 0} != nil or
      args[2] >= args[0] + args[1]
    raise TriangleError
  end

  if a == b and b == c and a == c
    :equilateral
  elsif a == b or a == c or b == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
