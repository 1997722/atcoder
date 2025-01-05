S = gets.chomp
T = gets.chomp
ans = "No"

if S == T
  ans = "Yes"
else
  (0...S.size).each do |i|
    if S[i] != T[i]
      # 左側の隣り合う文字をスワップしてチェック
      if i > 0
        swapped = S.dup
        swapped[i - 1], swapped[i] = swapped[i], swapped[i - 1]
        ans = "Yes" if swapped == T
      end

      # 右側の隣り合う文字をスワップしてチェック
      if i + 1 < S.size
        swapped = S.dup
        swapped[i], swapped[i + 1] = swapped[i + 1], swapped[i]
        ans = "Yes" if swapped == T
      end

      break
    end
  end
end

puts ans
