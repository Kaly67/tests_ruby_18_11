def ftoc(fahrenheit)
  ((fahrenheit - 32) * 5.0 / 9.0).round
end

def ctof(celsius)
  fahrenheit = (celsius * 9.0 / 5.0) + 32
  puts "Converted #{celsius}°C to #{fahrenheit}°F"
  fahrenheit
end