# Your Code Here
def map (ary)
  new = []
  ary.each_with_index do |val, index| 
    new[index] = yield val
  end
  return new
end

def reduce(ary, start = nil)
  if start 
    return_value = start
  else
    return_value = ary[0]
  end

  ary.each do |value|
    return_value = yield(return_value, value)
  end
  return return_value
end
