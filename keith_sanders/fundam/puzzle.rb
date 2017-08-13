x = [3,5,1,2,7,9,8,13,25,32]
puts x.reduce(:+)
x.each { |num| p num if num > 10 }

x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
p x.to_a.shuffle.to_s
x.each { |name| p name if name.size > 5}
a_array = Array("a".."z")
p a_array.shuffle

s_a = a_array.shuffle
p s_a.first
p s_a.last

if ["a", "e", "i", "o", "u"].include?(s_a.first)
    p "#{s_a.first.upcase} is a vowel yo."
else 
    p "#{s_a.first.upcase} is not in a vowel, Dangit"
end

p (0...10).map{rand(55..100)}


letters = ""
for i in 0..4
    letters +=(65+rand(26)).chr 
end
p letters

arr = []
for w in 0..9
    letters = ""
    for k in 0..4
        letters +=(65+rand(26)).chr
    end
    arr.push(letters)
end
p arr
