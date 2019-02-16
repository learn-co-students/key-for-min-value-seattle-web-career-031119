# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    return NIL
  end

  smallest = {
    value: (2**(0.size * 8 -2) -1)
  }
  name_hash.each do |key, value|
    if value < smallest[:value]
      smallest[:value] = value
      smallest[:key] = key
    end
  end
  smallest[:key];
end