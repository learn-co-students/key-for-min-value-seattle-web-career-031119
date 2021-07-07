# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    nil 
  else
    values = []
    the_key = []
    name_hash.each {|key, value|
      values << value
    }
    smallest = values[0]
    for i in 1..(values.length-1)
      if values[i] < smallest
        smallest = values[i]
      end
    end
    name_hash.each {|key, value|
      if value == smallest
        the_key = key
      end
    }
    the_key
  end
end

