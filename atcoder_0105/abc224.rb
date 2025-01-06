h, w = gets.split.map(&:to_i)
a = Array.new(h + 1) { Array.new(w + 1) }

(1..h).each do |i|
  row = gets.split.map(&:to_i)
  (1..w).each do |j|
    a[i][j] = row[j - 1]
  end
end

(1..h).each do |i_1|
  (i_1 + 1..h).each do |i_2|
    (1..w).each do |j_1|
      (j_1 + 1..w).each do |j_2|
        if a[i_1][j_1] + a[i_2][j_2] > a[i_2][j_1] + a[i_1][j_2]
          puts "No"
          exit
        end
      end
    end
  end
end

puts "Yes"
