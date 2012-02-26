prev = 1
mid = 1
a = [1]

while prev.to_s.length < 1000 do
  nxt = mid + prev
  prev = mid
  mid = nxt
  a << prev
end

p a.length