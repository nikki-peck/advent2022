# frozen_string_literal: true

def read_file
  dupe_index = 4

  File.readlines('input/daySixInput.txt').each do |buffer|
    # priming read
    marker_array = buffer[0..3].chars
    dupe = detect_duplicates(marker_array)

    until dupe.nil?
      marker_array.shift
      marker_array.push(buffer[dupe_index])
      dupe = detect_duplicates(marker_array)
      dupe_index += 1
    end
  end
  puts("Marker found at index #{dupe_index}")
end

def detect_duplicates(marker_array)
  marker_array.detect { |e| marker_array.count(e) > 1 }
end

read_file
