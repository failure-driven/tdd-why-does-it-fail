require "csv"

filename = ARGV.first
count = 0
sum = 0
ratings = []
CSV.read(
  filename,
  headers: true,
  header_converters: :symbol
).each do |row|
  count += 1
  sum += Integer(row[:rating])
  ratings << Integer(row[:rating])
end

puts "Average: #{sum / count.to_f}"
puts "Median: #{ratings[ratings.length / 2]}"
puts "Count: #{count}"
puts "Spread: #{(1..5)
  .map { |k| [k, 0] }
  .to_h
  .merge(ratings.tally.sort_by { |k, _v| k }.to_h)
  .inspect}"
