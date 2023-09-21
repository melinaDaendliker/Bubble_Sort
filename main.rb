def bubble_sort(num_array)
  sorted = false
  until sorted do
    for i in 1...num_array.length do
      if num_array[i] < num_array[i-1]
        num_array[i-1], num_array[i] = num_array[i], num_array[i-1]
      end
    end
    sorted_pairs = 0
    for i in 1...num_array.length do
      if num_array[i-1] < num_array[i] || num_array[i-1] == num_array[i]
        sorted_pairs += 1 
      end
    end
    if sorted_pairs == num_array.length - 1
      sorted = true
    end
  end 
  num_array
end 

p bubble_sort([200,4,3,78,2,0,2,0, 43, 17, 57,199])
