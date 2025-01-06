B = gets.to_i

(1..15).each do |a|
  x = 1
  a.times { x *= a }
  if x == B
    puts a
    exit
  end
end

puts "-1"
