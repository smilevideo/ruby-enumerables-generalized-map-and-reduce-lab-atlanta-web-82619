# Your Code Here
def map (ary)
  new = []
  ary.each_with_index do |val, index| 
    new[index] = yield val
  end
  return new
end

def reduce(ary, start = ary[0])
  return_value = start
  
  ary.each do |value|
    yield return_value = yield value
  end
  return return_value
end
