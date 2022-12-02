# A,X - Rock 1
# B,Y - Paper 2
# C,Z - Scissors 3
input = File.read("input.txt")
result = input.split("\n").map do |game|
  rez = 0
  first,second = game.split
  # draws
  if first == 'A' && second == 'X'
    rez += 1 # rock
    rez += 3
  elsif first == 'B' && second == 'Y'
    rez += 2 # paper
    rez += 3
  elsif first == 'C' && second == 'Z'
    rez += 3 # scissors
    rez += 3
    # first wins
  elsif first == 'A' && second == 'Z'
    rez += 3 # scissors
  elsif first == 'B' && second == 'X'
    rez += 1 # rock
  elsif first == 'C' && second == 'Y'
    rez += 2 # paper
    # second wins
  elsif first == 'A' && second == 'Y'
    rez += 2 # paper
    rez += 6
  elsif first == 'B' && second == 'Z'
    rez += 3 # scissors
    rez += 6
  elsif first == 'C' && second == 'X'
    rez += 1 # rock
    rez += 6
  end

  rez
end.sum

puts result
