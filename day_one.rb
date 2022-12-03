# frozen_string_literal: true

class DayOne
  total = 0
  totals = []

  File.readlines("input/dayOneInput.txt").each do |line|
    calories = line.to_i
    if calories.zero?
      totals << total
      total = 0
    end
    total += calories
  end

  totals = totals.sort.reverse
  puts("Elf with the most calories has #{totals[0]} calories")

  top_three = totals[0] + totals[1] + totals[2]
  puts("Top three Elves are carrying #{top_three} calories")
end
