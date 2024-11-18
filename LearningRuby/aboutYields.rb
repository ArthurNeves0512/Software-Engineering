#in ruby i think that the primery rule is the DRY(Dont repeat yourself)
# and a flexible think that makes possible is using the yield
# lets think we have a problem,  we need to calculate and take the mean of values
# and after that, we will sum, or subtract the original values, how could we do this?

#Using the original approach

#create three methods for all this things

def operations_on_array_using_mean(array,function)
  size = array.size()
  totalSum=0
  
  array.each do |element|
    totalSum = totalSum+element
  end

  function.call(array,totalSum/size)
end

def sum_with_mean(array,mean)
  
  puts"the mean is #{mean}"
  puts"the original array is #{array}"
  array.map do |element|
    element = element+mean
  end
end

#calling the function with operator

result = operations_on_array_using_mean([1,2,3,4],method(:sum_with_mean))
puts result

#after all of that, we can check that if we gonna make differents operations
#we need to create for every operation, a function thats make it.
#making the code more extensive and more "ugly"

#but how could we improve the view and the process to undertand what the code do?
# we can use yield, the yield will get out the first function, and getting the controll
# to the other function writed

def operation_on_array_using_mean_and_yield(array)
  total_sum = 0
  size = array.size
  array.each do |element|
    total_sum += element 
  end
  mean = total_sum / size
  puts "The mean of array using yield approach ${mean}"
  puts "the original array using yield #{array}"
  yield(array,mean)  
end

result_using_yield=operation_on_array_using_mean_and_yield([1, 2, 3, 4]) do |array, mean|
  return array.each do |element| 
        element+mean
        end
end
puts result_using_yield
