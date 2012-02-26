a = (1..100).to_a.map do |i|
  i*i
end

d = a.inject(:+)

b = (1..100).to_a.inject(:+)

c = b*b

p c - d