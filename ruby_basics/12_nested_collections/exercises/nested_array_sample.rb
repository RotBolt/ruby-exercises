# frozen_string_literal: true


test_scores = [
  [100, 90, 88],
  [50, 56, 62],
  [99, 100]
]

test_scores[0].push(85)

test_scores.each do |scores|
  scores.each do |score|
    print "#{score} "
  end
  puts ""
end


