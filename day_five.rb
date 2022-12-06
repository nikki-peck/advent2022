# frozen_string_literal: true

# top level documentation comment
class DayFive
  # I have a method to do this programmatically, but it is not pretty
  # also, make it one based
  stacks = [
    [],
    %w[S C V N],
    %w[Z M J H N S],
    %w[M C T G J N D],
    %w[T D F J W R M],
    %w[P F H],
    %w[C T Z H J],
    %w[D P R Q F S L Z],
    %w[C S L H D F P W],
    %w[D S M P F N G Z]
  ]

  # part 1 read the file and make the moves
  File.readlines('input/dayFiveInput.txt').each do |line|
    # line looks like move 5 from 2 to 6
    numbers = line.strip.split(' ').map(&:to_i)

    # get the important parts
    boxes = numbers[1]
    from = numbers [3]
    to = numbers[5]

    move = stacks[from].pop(boxes).reverse
    stacks[to] = stacks[to].push(move).flatten
  end

  puts("Boxes on top of stacks #{stacks.collect(&:last)}")

  stacks = [
    [],
    %w[S C V N],
    %w[Z M J H N S],
    %w[M C T G J N D],
    %w[T D F J W R M],
    %w[P F H],
    %w[C T Z H J],
    %w[D P R Q F S L Z],
    %w[C S L H D F P W],
    %w[D S M P F N G Z]
  ]

  File.readlines('input/dayFiveInput.txt').each do |line|
    # line looks like move 5 from 2 to 6
    numbers = line.strip.split(' ').map(&:to_i)

    # get the important parts
    boxes = numbers[1]
    from = numbers [3]
    to = numbers[5]

    move = stacks[from].pop(boxes)
    stacks[to] = stacks[to].push(move).flatten
  end

  puts("Boxes on top of stacks #{stacks.collect(&:last)}")
end
