=begin
Есть массив [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14,
126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222,
220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336] , сохранить массив в
переменную и проделать с ней следующее (должен выводиться результат, но саму
переменную не менять):
=end

@array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14,
          126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16,
          139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

puts "array = #{@array}"

# узнать количество элементов в массиве
def size
  @array.length
end

puts "size = #{size}"

# перевернуть массив
def reverse
  @array.reverse
end

puts "reserse = #{reverse}"

# найти наибольшее число
def max
  @array.max
end

puts "max = #{max}"

# найти наименьшее число
def min
  @array.min
end

puts "min = #{min}"

# отсортировать от меньшего к большему
def asc
  @array.sort
end

puts "asc = #{asc}"

# отсортировать от большего к меньшему
def desc
  @array.sort.reverse
end

puts "desc = #{desc}"

# удалить все нечетные числа
def even
  @array.select(&:even?)
end

puts "even = #{even}"

# оставить только те числа, которые без остатка делятся на 3
def multiple_to_three
  @array.select { |i| i % 3 == 0 }
end

puts "multiple_to_three = #{multiple_to_three}"

# удалить из массива числа, которые повторяются (то есть, нужно вывести массив,
# в котором нет повторов)
def uniq
  @array.uniq
end

puts "uniq = #{uniq}"

# разделить каждый элемент на 10, в результате элементы не должны быть
# округленыдо целого
def devide_on_ten
  @array.collect { |x| x.to_f / 10 }
end

puts "devide_on_ten = #{devide_on_ten}"

# получить новый массив, который бы содержал в себе те буквы английского
# алфавита, порядковый номер которых есть в нашем массиве
def chars
  @array.select { |n| n.between?(1, 26) }.map do |x|
    ('a'..'z').to_a[x - 1].to_sym
  end
end

puts "chars = #{chars}"

# поменять местами минимальный и максимальный элементы массива
def switch
  min = @array.min
  max = @array.max
  min_index = @array.index(min)
  max_index = @array.index(max)
  dup_array = @array.dup
  dup_array[min_index] = max
  dup_array[max_index] = min
  dup_array
end

puts "switch = #{switch}"

# найти элементы, которые находятся перед минимальным числом в массиве
def before_min
  min = @array.min
  min_index = @array.index(min)
  @array.take(min_index)
end

puts "before_min = #{before_min}"

# необходимо найти три наименьших элемента
def three_smallest
  @array.sort.take(3)
end

puts "three_smallest = #{three_smallest}"
