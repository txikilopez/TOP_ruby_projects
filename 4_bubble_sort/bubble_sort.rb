def bubble_sort(array_numbers)
  array_numbers = array_numbers.map {|num| num.to_i}
  total_numbers = array_numbers.length-1
  length_to_iterate = array_numbers.length - 1
  # swapped = false
  aux_variable = 0

  for i in 0..total_numbers-1
    swapped = false
    for j in 0..length_to_iterate-1
      if array_numbers[j] > array_numbers[j+1]
        swapped = true
        aux_variable = array_numbers[j]
        array_numbers[j] = array_numbers[j+1]
        array_numbers[j+1] = aux_variable
      end
    end
    length_to_iterate = length_to_iterate-1
    return array_numbers if swapped == false
  end
  array_numbers
end

puts "Please input array of numbers to be sortes separated by ', ', with no brackets:"
array_input = gets.chomp
array_input = array_input.split(", ")

a = bubble_sort(array_input)
puts "sorted array is #{a}"

#testblock
# array_input =  [4,3,78,2,0,2]
# a = bubble_sort(array_input)
# p a
