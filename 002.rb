prev = 1
mid = 1
a = []

while mid < 4000000 do
  nxt = mid + prev
  prev = mid
  mid = nxt
  a << prev
end

a.select(&:even?).inject(:+)
