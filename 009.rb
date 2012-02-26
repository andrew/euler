def check(a,b,c)
  a**2 + b**2 == c**2
end

r = []
(1..332).to_a.each do |a|
  (2..499).to_a.each do |b|
    (335..500).to_a.each do |c|
      next if a + b + c != 1000
      r = [a,b,c] if check(a,b,c)
    end
  end
end

r.inject(:*)