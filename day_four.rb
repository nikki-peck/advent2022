# frozen_string_literal: true

# top level documentation comment
class DayFour
  overlap_count = 0
  cover_count = 0
  File.readlines('input/dayFourInput.txt').each do |line|
    line = line.strip
    str_arr = line.split(',')

    ranges = []
    str_arr.each_with_index do |range_str, index|
      ends = range_str.split('-').map(&:to_i)
      ranges[index] = (ends[0]..ends[1])
    end

    cover_count += 1 if ranges[0].cover?(ranges[1]) || ranges[1].cover?(ranges[0])
    next unless ranges[0].include?(ranges[1].first) ||
                ranges[0].include?(ranges[1].last) ||
                ranges[1].include?(ranges[0].first) ||
                ranges[1].include?(ranges[0].last)

    overlap_count += 1
  end
  puts("Covering sections count #{cover_count}")
  puts("Overlapping sections count #{overlap_count}")
end
