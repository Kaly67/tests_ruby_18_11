def who_is_bigger(a, b, c)
  return "nil detected" if a.nil? || b.nil? || c.nil?

  if a > b && a > c
    "a is bigger"
  elsif b > a && b > c
    "b is bigger"
  else
    "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string.upcase.reverse.gsub(/[LTA]/, '')
end

def array_42(array)
  array.include?(42)
end

def magic_array(array)
  array.flatten.uniq.map { |n| n * 2 }.reject { |n| n % 3 == 0 }.sort
end

