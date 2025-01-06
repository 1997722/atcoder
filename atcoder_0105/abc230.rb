s = gets.chomp

["oxx", "xox", "xxo"].each do |t|
  ok = true
  s.size.times do |i|
    if t[i % 3] != s[i]
      ok = false
      break
    end
  end
  if ok
    puts "Yes"
    exit
  end
end

puts "No"
