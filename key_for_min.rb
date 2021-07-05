# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

if name_hash.empty?
  return nil
end

  lowest_key = ''
  count1 = 0
  count2 = 0
  lowest_number = 0
  lowest_number_array = []
  lowest_key_array = []
  name_hash.each do |key, number|
    lowest_number_array.push(number)
    lowest_key_array.push(key)
  end

  puts lowest_number_array.length


  while count1 < lowest_number_array.length
    test_count = 0
    count2 = 0
    while count2 < lowest_number_array.length
      if lowest_number_array[count1] <= lowest_number_array[count2]
        test_count += 1
        puts "#{test_count}this is count"
      end
      if test_count == lowest_number_array.length
        lowest_key = lowest_key_array[count1]
      end
      count2 += 1
      puts "this is count2 #{count2}"
    end
    count1 += 1
    puts "this is the count1 #{count1}"
  end
    lowest_key
end
