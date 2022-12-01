file = File.read("input.txt")
part1 = file.split("\n\n").map { |chunk| chunk.split.map(&:to_i).sum }.max

puts "part 1: #{part1}"

part2 = file.split("\n\n").map { |chunk| chunk.split.map(&:to_i).sum }.sort_by { -_1}.take(3).sum
puts "part 2: #{part2}"
