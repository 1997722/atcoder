n = gets.to_i
count = Array.new(n + 1, 0) # 各頂点の次数を数える配列

(n - 1).times do
  a, b = gets.split.map(&:to_i)
  count[a] += 1
  count[b] += 1
end

(1..n).each do |i|
  if count[i] == n - 1
    puts "Yes"
    exit # プログラムを終了
  end
end

puts "No"
