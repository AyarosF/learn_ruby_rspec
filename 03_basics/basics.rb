def who_is_bigger(a, b, c)
  hash = {"a" => a, "b" => b, "c" => c}
  hash.has_value?(nil) ? "nil detected" : "#{hash.key(hash.values.max)} is bigger"
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete("LTA")
end

def array_42(arr)
  arr.include?(42) 
end

def magic_array(arr)
  arr.flatten.map{|n| n * 2}.select{|n| n % 3 != 0 }.uniq.sort
end
