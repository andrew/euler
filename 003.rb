def factorize(orig)
  factors = {}
  factors.default = 0     # return 0 instead nil if key not found in hash
  n = orig
  i = 2
  sqi = 4                 # square of i
  while sqi <= n do
    while n.modulo(i) == 0 do
        n /= i
        factors[i] += 1
    end
    sqi += 2 * i + 1
    i += 1
  end

  factors[n] += 1 if (n != 1) && (n != orig)
  factors
end

factorize(600851475143).keys.last