def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b)
  a * b
end

def power(base, exponent)
  base ** exponent
end

def factorial(n)
  return 1 if n == 0 # Par convention, la factorielle de 0 est 1
  (1..n).inject(:*) # Multiplie tous les nombres de 1 à n
end
