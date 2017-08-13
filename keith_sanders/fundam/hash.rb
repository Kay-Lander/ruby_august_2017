x = {:f_name => "Keith", :l_name => "Sanders"}
x.delete(:l_name)
p x[:f_name], x[:l_name]

x = {:first_name => "Keith", :last_name => "Sanders"}
p x.empty?

x = {:f_name => "Keith", :l_name => "Sanders"}
if x.has_key?(:l_name)
    p "X has a key called :l_name"
else
    p "X doesn't have a key called :l_name"
end

x = {:f_name => "Keith", :l_name => "Sanders"}
if x.has_value?("Keith")
    p "X has a value called Keith!!!"
else
    p "X doesn't have a value calle ME!!!"
end