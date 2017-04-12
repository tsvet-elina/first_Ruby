
#	3.Напишете програма, която приема име на текстов файл от конзолата, отваря файла и създава нов
#	файл, в който обръща наобратно редовете от оригиналния файл. Името на новия файл трябва да
#	е също наобратно.

file_text = File.new("txet.txt", "w+")
File.new("text.txt").each_line.reverse_each { |line| file_text.puts line }
file_text.close