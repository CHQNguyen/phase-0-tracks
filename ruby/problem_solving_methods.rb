arr1 = [0, 1, 2, 3, 4, 5, 6, 7, 99]
def search_array(arr1, int)
    find_num = arr1.find_index(int)
end

p search_array(arr1, 12)


def fibonacci(n)
   a = 0
   b = 1    
   # Compute Fibonacci number in the desired position.
   n.times do 
    c = a
    a = b
    # Add up previous two numbers in sequence.
    b = c + b
   end    
   return a
end
# Write first 15 Fibonacci numbers in sequence.

(0..100).map do |n|
   result = fibonacci(n)
   p result
end

#defining method
def bubble_sort(array)
	#iguring out length of arry to sort
    n = array.length
	#sort loop
    loop do 
    	#breaking point to end sort
        swapped = false
        #taking length of arry minus 1
        (n-1).times do |i|
        	#iteration of array 1 is greater then the second then
            if array[i] > array[i + 1]
            #true swap first iteration with second iteration
              array[i], array[i + 1] = array[i +1], array[i]
              swapped = true
            end
        end
        #move on if you dont need to swap
        break if not swapped
    end
 #returning to the top of our array   
 array 
end

a = [1,4,5,3,6,1,4,2,1,7]

p bubble_sort(a)


