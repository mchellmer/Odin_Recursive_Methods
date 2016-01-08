# Sorts given array using merge sort method
def merge_sort(array)
  return array if array.length == 1

  # Divide & conquer
  half1 = merge_sort(array[0..array.length/2 - 1])
  half2 = merge_sort(array[array.length/2..-1])

  # Initialize result array
  sorted = []
  
  while half1.length > 0 && half2.length > 0
    if half1[0] <= half2[0]
      sorted << half1.shift
    else
      sorted << half2.shift
    end
  end
  if half1.length > 0
    sorted.concat half1
  elsif half2.length > 0
    sorted.concat half2
  end
  
  return sorted
end

test = [3,5,1,8,0,10,11]
print merge_sort(test)
      
  
  