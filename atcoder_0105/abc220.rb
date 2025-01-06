def f(s, k)
  # k進法表記のsを10進法に変換する
  ans = 0
  s.each_char do |x|
    ans *= k
    ans += x.to_i
  end
  ans
end

k = gets.to_i
a, b = gets.split

a_base10 = f(a, k)
b_base10 = f(b, k)

puts a_base10 * b_base10
