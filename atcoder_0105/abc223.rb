s = gets.chomp
n = s.size
v = []

n.times do |i|
  v << s[i..-1] + s[0...i]
end

puts v.min
puts v.max
