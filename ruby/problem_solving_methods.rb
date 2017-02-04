# **** release 0 ****
#Define a method that searches for an integer within an array 
#The method will return the index of the integer or nil if the integer does not exist 

array = [15, 27, 31, 7, 80]
def search_array(array, integer)
  index = 0
  search_result = nil
  array.each do |x|
    if x == integer
      search_result = nil
      # break
    end
  index += 1 
  end
  return search_result 
end

p search_array(array, 7)
p search_array(array, 2)
p search_array(array, 31)
p search_array(array, 20)

# ***** release 1 *****


def fib(num)
  fib_num = [0, 1]
    while fib_num.length < num
      fib_num << (fib_num[-2] + fib_num[-1])
    end
  return fib_num 
end 

p fib(6)
p fib(100)



#***** release 2 *****
=begin 
BUBBLE SORT ALGORITHM
- Create an array.
- Take length of array, then use loop to iterate through entire length of array.
- Create boolean "switched" and set to "false".
- Compare integers at index 0 and 1, if integer at second index higher, swap places.
- Every time integers are swapped, set "switched" to "true".
- Iterate through array and take next two pairs (at index 1 and 2), swap if necessary.
- Continue this iteration until entire array has been sorted.
- Exit loop when "switched" is false.
=end

array = [35, 6, 100, 11, 54, 55]

def bubble_sort(array)
  length = array.length - 1 
  loop do
    switched = false
    length.times do |x|
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        switched = true
      end
    end
    if switched == false
      break
    end 
  end
  array
end

p bubble_sort(array)