input = ARGV.first;
require 'csv'

i = 0;
header = 0;

while i < 1 do
	puts " ingrese su cedula"
	cedula = STDIN.gets.chomp;

	puts " ingrese su nombre"
	nombre = STDIN.gets.chomp;

	puts " ingrese su edad"
	edad = STDIN.gets.chomp;

	puts " desea guardar (yes/no)"
	choise = STDIN.gets.chomp;

	if choise == "yes"
		CSV.open(input, 'a+') do |csv|
			if header == 0
				csv << ['cedula','nombre','edad']
				header = header + 1;
			end
				csv << [cedula,nombre,edad]
		end
		else
			i = i + 1;
	end

end

gets();