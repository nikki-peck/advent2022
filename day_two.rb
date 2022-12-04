# frozen_string_literal: true

# top level documentation comment
class DayTwo
  # store a lookup structure
  scores = {
    "A": { "X": 4, "Y": 8, "Z": 3 },
    "B": { "X": 1, "Y": 5, "Z": 9 },
    "C": { "X": 7, "Y": 2, "Z": 6 }
  }
  scores_two = {
    "A": { "X": 3, "Y": 4, "Z": 8 },
    "B": { "X": 1, "Y": 5, "Z": 9 },
    "C": { "X": 2, "Y": 6, "Z": 7 }
  }
  i_win = 0
  i_win_again = 0
  # strategy file
  File.readlines("input/dayTwoInput.txt").each do |line|
    line.strip
    elf_throw = line[0].to_sym
    my_throw = line[2].to_sym

    hash_scores = scores[elf_throw]
    i_win += hash_scores[my_throw]

    hash_scores_two = scores_two[elf_throw]
    i_win_again += hash_scores_two[my_throw]
  end
  puts("My score: #{i_win}")
  puts("Part two score: #{i_win_again}")
end
