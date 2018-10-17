def scale_check (scale)
	return ["c", "f", "k"].include?(scale.downcase)
end

def scale_trans (degree, x, y)
	if x == "c"
		if y == "f"
			return ((9.0 / 5.0) * degree) + 32.0
		end
		if y == "k"
			return degree + 273.15
		end
	end
	if x == "f"
		if y == "c"
			return (5.0 / 9.0) * (degree - 32.0)
		end
		if y == "k"
			return 5.0 * (degree - 32.0) / 9.0 + 273.15
		end
	end
	if x == "k"
		if y == "c"
			return degree - 273.15
		end
		if y == "f"
			return 9.0 * (degree - 273.15) / 5.0 + 32.0
		end
	end

	return degree
end


puts "C - Celsius, F - Fahrenheit, K - Kelvin"
print "Enter the degree`s value: "
degree = gets.chomp
x_scale = degree[degree.length - 1]
if scale_check(x_scale) == false
	puts "Error!"
	exit
end
puts "Enter the scale`s convertible name\n"
y_scale = gets.chomp
if scale_check(y_scale) == false
	puts "Error!"
	exit
end

answer = scale_trans(degree.to_f, x_scale.downcase, y_scale.downcase)

puts "#{degree.to_f} #{x_scale} = #{answer} #{y_scale}"
