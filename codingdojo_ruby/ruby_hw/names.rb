def names
  a = {:first_name => "Kyle", :last_name => "Johnson"}
  b = {:first_name => "Brandon", :last_name => "Walter"}
  c = {:first_name => "Eve", :last_name => "Moldelski"}
  d = {:first_name => "Matt", :last_name => "Pederson"}
  e = {:first_name => "Alex", :last_name => "Hartle"}
  names = [a, b, c, d, e]
  puts "You have #{names.length} names in the 'Names' array"
  for i in names
    puts "The name is '#{i.fetch(:first_name)} #{i.fetch(:last_name)}'"
  end
end
names
