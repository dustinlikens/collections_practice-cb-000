def sort_array_asc(array)
  array.sort do |a,b|
    a <=> b
  end
end

def sort_array_desc(array)
  array.sort do |a,b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements(array, index=1, destination_index=2)
  index_copy = array[index]
  array[index] = array[destination_index]
  array[destination_index] = index_copy
  return array
end

def reverse_array(array)
  return array.reverse
end

def kesha_maker(array)
  return array.collect do |string|
    string[0..1] + "$" + string[3..-1]
  end
end

def find_a(array)
  array.select do |string|
    string.start_with?("a")
  end
end

def sum_array(array)
  array.inject(0) {|sum, p| sum + p}
end

def add_s(array)
  array.each_with_index.collect do |element, i|
    if i != 1
      element << "s"
    else
      element
    end
  end
end