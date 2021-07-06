# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_hash = []
  name_hash.each do |k, v|
    if min_hash == []
      min_hash.push(k, v)
    else
      if v < min_hash[1]
        min_hash[0] = k
        min_hash[1] = v
      end
    end
  end
  min_hash[0]
end