# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  value_holder = 1000
  key_holder = nil
  name_hash.collect do |key, value|
    if value < value_holder
      value_holder = value
      key_holder = key
    end
  end
  key_holder
end
