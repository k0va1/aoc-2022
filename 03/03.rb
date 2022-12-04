input = File.read("input.txt")
lines = input.split("\n")

weights = [*("a".."z"), *("A".."Z")].each_with_object({}).with_index { |(letter, acc), index| acc[letter] = index + 1 }

result = lines.map do |items|
  mid = items.length/2
  left, right = items[0...mid], items[mid..]
  item = left.chars.find do |c|
    right.chars.find {|cc| c == cc }
  end
  weights[item]
end.sum

puts result
