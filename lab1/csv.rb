#!/usr/bin/vitashib ruby
require 'csv'

if __FILE__ == $0
	stat = CSV.read('./stats.csv')[1]
	stat = stat.collect {|i| i.to_f}
	puts "Enter operation : Мах / Min / Avg / Disp"
	action = gets.chomp.downcase
	case action
	when "max"
		puts "Max = #{stat.max}" 
		exit
	when "min"
		puts "Min = #{stat.min}"
		exit
	when "avg"
		aver = stat.reduce(:+) / stat.size.to_f 
		puts "Averege = #{aver}"
		exit
	when "disp"
		aver_select = (stat.max - stat.min) / 2.0
 		disp = 0.0
  		stat.each do |number|
    		disp += (number - aver_select) ** 2 
  		end
  		puts "Dispersion = #{disp/stat.size.to_f}"
		exit
	end
	puts "Error!"
end
