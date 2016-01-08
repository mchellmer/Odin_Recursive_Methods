## Write method to display n elements of fibonacci sequence
# Brute force
def fibs(n)
  array = [1,1]
  n.times do
    array << (array[-2] + array[-1])
  end
  return array[0..n-1]
end

# Recursive
def fibsr(n); return [0,1] if n == 1 else fibsr(n-1) << (fibsr(n-1)[-2] + fibsr(n-1)[-1]); end