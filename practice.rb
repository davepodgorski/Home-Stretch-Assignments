array = ['hi', 'marbles', 'mittens', 'bye', 'lorem', 'ipsum', 'to', 'a', 'hippocampus']

def longest_consecutive(arr, k)
  new_array = []
  if k < 0
    return "___"
  end
  arr.each_cons(k) do |item|
    new_array << item.join
  end
  if new_array.length >= k
    return new_array.max_by(&:length)
  elsif arr.length <= k
  return "__"

end
end

puts longest_consecutive(array, 2)
