
# def sum
#       b = [3,5,1,2,7,9,8,13,25,32]
#       sum = 0
#       b.each do |x|
#         sum+=x
#       end
#       print sum
#       count = 0
#       newArr = Array.new
#       b.each do |y|
#         newArr.push(y) if y > 10
#       end
#       print newArr
# end
# sum

# def shuffle
#     c = ["John", "KB", "Oliver", "Cory", "Mathew", "Christopher"]
#     puts c.shuffle
#     newArr = Array.new
#     c.each do |f|
#       newArr.push(f) if f.length > 5
#     end
#     print newArr
# end
# shuffle


# def contains
#     c = ['A','B','C','D','E','F','G','H','I','J','K','L','M',
#       'N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
#     # puts c.shuffle.last
#     sh = c.shuffle.first
#     puts sh
#     if sh.start_with?"A", "E", "I", "O", "U"
#       puts "Good"
#     else
#       puts "Wrong"
#     end
# end
# contains


# def randomArray
#     newArr = Array.new
#     for i in 1..10
#       num = Random.new.rand(55..100)
#       newArr.push(num)
#     end
#     print newArr
# end
# randomArray


# def randomArray
#     newArr = Array.new
#     for i in 1..10
#       num = Random.new.rand(55..100)
#       newArr.push(num)
#     end
#     print newArr.sort
#     print newArr.min
#     print newArr.max
# end
# randomArray


# def randomString
#   puts (1..5).map{(65 + rand(26)).chr}.join
# end
# randomString


# def randomThings
#   newArr = Array.new
#   for i in 1..10
#     a = (1..5).map{(65 + rand(26)).chr}.join
#     newArr.push(a)
#   end
#   print newArr
# end
# randomThings
