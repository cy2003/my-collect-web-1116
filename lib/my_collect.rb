def my_collect(arr)
  new_arr = []
  i = 0
  while i < arr.length
    new_arr << (yield arr[i])
    i += 1
  end
  new_arr
end

students = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(students) do |student|
  student.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(languages) do |language|
  language.upcase
end
