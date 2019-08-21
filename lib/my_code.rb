# Your Code Here
def map (ary)
  new = []
  ary.each_with_index do |val, index| 
    yield val
  end
end