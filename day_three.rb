# frozen_string_literal: true

# top level documentation comment
class DayThree
  # hash lookups
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  keys = lower + upper
  values = (1..52).to_a
  hash = Hash[keys.zip(values)]
  priority = 0
  # part two
  elf_group = []
  elf_count = 0
  priority_two = 0

  # strategy file
  File.readlines('input/dayThreeInput.txt').each do |rucksack|
    rucksack = rucksack.strip
    elf_group[elf_count] = rucksack.chars
    length = rucksack.length
    half = length / 2
    comp_one = rucksack[0, half].chars
    comp_two = rucksack[half, length].chars

    dupe = (comp_one & comp_two).first
    priority += hash[dupe]
    elf_count += 1

    next unless elf_count == 3

    badge = (elf_group[0] & elf_group[1] & elf_group[2]).first
    elf_group = []
    elf_count = 0
    priority_two += hash[badge]
  end

  puts("sum of priorities: #{priority}")
  puts("sum of badge priorities: #{priority_two}")
end
