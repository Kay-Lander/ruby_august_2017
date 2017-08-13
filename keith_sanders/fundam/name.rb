a = {f_name: "Michael", l_name: "Choi"}
b = {f_name: "John", l_name: "Doe"}
c = {f_name: "Jane", l_name: "Doe"}
d = {f_name: "James", l_name: "Smith"}
e = {f_name: "Jennifer", l_name: "Smith"}
f = {f_name: "Keith", l_name: "Sanders"}

names = [a,b,c,d,e,f]

p "You have #{names.length} names in the 'names' array"

names.each do |name|
    p "The name is #{name[:f_name]} #{name[:l_name]}"
end

