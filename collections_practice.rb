# your code goes here
def begins_with_r(array) 
  output = true
  array.each {|word| 
    if !word.start_with?("r") 
      output = false
    end }
    output
end 

def contain_a(array) 
  array.select {|word| 
    word.include?("a") }
end 

def first_wa(array) 
  array.find {|word| 
    word.to_s.start_with?("wa") }
end 

def remove_non_strings(array) 
  array.select {|element| 
    element.class == String}
end 

def count_elements(array) 
  index_by_name = {}
  new_array = []
  counter = 0
  array.each {|hash| 
    name = hash[:name]
    if index_by_name[name] 
      index = index_by_name[name]
      new_array[index][:count] += 1
    else 
      new_array << {:name => name, :count => 1}
      index_by_name[name] = counter
      counter += 1
    end
  }
      new_array
end

def merge_data(array1, array2)
  counter = 0 
  new_array = []
  array2.each {|hash| 
    keys = array1[counter].keys
    keys.each {|key|
      value = array1[counter][key]
      hash[key] = value }
    new_array << hash
    counter += 1 }
    new_array
end

def find_cool(array)
  array.select {|hash| 
    hash[:temperature] == "cool" }
end

def organize_campuses(hash)
  new_hash = {} 
  hash.each {|school, location| 
    state = location[:location]
    if new_hash[state]
      new_hash[state] << school 
    else 
      new_hash[state] = [school]
    end }
    new_hash
    
end


