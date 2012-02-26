def palindrome?(number)
  number.to_s == number.to_s.reverse
end

i = 999
j = 999

pans = []

while i > 99 do
  i = i -1
  n = i*j
  j = 999
  while j > 99 do
    j = j - 1
    n = i*j
    pans << n if palindrome?(n)
  end
  pans << n if palindrome?(n)
end

pans.sort