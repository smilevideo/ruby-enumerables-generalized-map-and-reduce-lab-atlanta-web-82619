# Your Code Here
def map (ary)
  new = []
  ary.each_with_index do |val, index| 
    new[index] = yield val
  end
  return new
end

def reduce(ary, start = 0)
  val = start
  
  ary.each do |value|
    yield val
    yield value 
  end
  return val
end
