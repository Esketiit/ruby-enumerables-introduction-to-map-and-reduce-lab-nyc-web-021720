def map_to_negativize (array)
  mapArr = []
  i = 0

  while i < array.length
		if array[i] > 0
			mapArr.push(array[i] - array[i] * 2)
		else
			mapArr.push(-1 * array[i])
    end
    i = i + 1
  end

	return mapArr
end

def map_to_no_change (array)
  array
end

def map_to_double(array)
  mapArr = []

  array.each do |num|
    mapArr.push(num * 2)
  end

  return mapArr
end

def square (num)
  number = 0
  if num < 0
    num = -(num)
  end

  num.times{number += num }
  return number
end

def map_to_square (array)
  mapArr = []

  array.each do |num|
    mapArr.push(square(num))
  end

  return mapArr
end

def reduce_to_total (array, starting_point = 0)
  sum = starting_point

  array.each do |num|
    sum += num
  end
  return sum
end

def reduce_to_all_true (array)
  array.each do |value|

    if (!value)
      return false
    end
  end

  return true
end

def reduce_to_any_true (array)
  array.each do |value|

    if (value)
      return true
    end
  end

  return false
end
