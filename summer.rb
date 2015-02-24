# n: 1 + 2 + 3 ... + n
# sum(1) = 1

def sum(n)
  #return 1 if n == 1
  n + sum(n - 1)
end

p sum(1)
p sum(2)
p sum(3)