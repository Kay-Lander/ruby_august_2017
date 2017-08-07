#for i in 1..256
    puts "#{i}"
#end

#for i in 1..255 
    #puts i if i % 2 == 1
#end




 (0..255).each { |i| puts "New Number: #{i} Sum: #{sum += i}"}

[1,3,5,7,9,13].each { |elem| puts elem }

 puts [-3,-5,-7].max

 puts [4,-2,9,-4].min

 puts [3,19, 344, -532, 2].average

 arr = [2,10,3]
 puts arr.reduce(:+) / arr.length.to_f
5.0

y = []
 (1..255).each { |i| y << i if i.odd? }
 1..255

arr = [1,3,5,7]
 
y = 3
 
puts arr.count { |elem| elem > y }

 arr = [1,5,30,-54]
 puts arr.map! { |elem| elem * elem }


 arr = [1,5,8,9,0]
puts arr.each_index { |index| arr[indexx] = 0 if arr[index] < 0 }

arr = [1,9,3,4,2,7]
{ max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }
