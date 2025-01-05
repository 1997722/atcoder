N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = (A + B).sort

(N + M - 1).times do |i|
  if A.include?(C[i]) && A.include?(C[i + 1])
    puts "Yes"
    exit
  end
end

puts "No"
