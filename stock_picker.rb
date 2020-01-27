def stock_picker array
  return_array = []

  max_diferencies = []
  hash = {}

  array.length.times do |n|
    sub_max = array[n..-1].sort[-1]
    max_diferencies[n] = sub_max - array[n]
    hash[[n, array.index(sub_max)]] = max_diferencies[n]
  end

  print hash

  max = 0
  hash.each do |key, value|
    if value > max
      return_array = key
      max = value
    end
  end

  return_array
end

stock_picker([17,3,6,9,15,8,6,1,10])
