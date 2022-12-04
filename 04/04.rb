input = File.read("input.txt")

result = input.split.count do |pair|
  left, right = pair.split(",")
  left_range = Range.new(*left.split("-").map(&:to_i))
  right_range = Range.new(*right.split("-").map(&:to_i))
  left_range.cover?(right_range) || right_range.cover?(left_range)
end

puts "part 1: #{result}"


result = input.split.count do |pair|
  left, right = pair.split(",")
  left_range = Range.new(*left.split("-").map(&:to_i))
  right_range = Range.new(*right.split("-").map(&:to_i))
  !(left_range.to_a & right_range.to_a).empty?
end

puts "part 2: #{result}"
