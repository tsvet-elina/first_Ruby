# 1.1 Създайте структура в Ruby, която да съхранява тези данни.

$arr = {
	"Paul Barry" => ["Programming", "Networking", "Security", "Open Source", "Frameworks"],
	"Chris Meudec" => ["Testing", "Safety Systems", "Formal Systems", "Programming Languages"],
	"Nigel Whyte" => ["Graphics", "Imaging", "Programming", "Sign Language", "Trees"],
	"Austin Kinsella" => ["Networks", "WANs", "Programming", "Macintosh", "Digital Photography"],
	"Garry Moloney" => ["Placement","Employment","Emerging System","Web Development"],
	"Charles Neuman" => ["Control Systems","Teaching","Robotics","Feedback Loops"],
	"Geri Ilieva" => ["Star Wars", "Cooking", "Photography", "Programming"],
	"Anthony Rowe" => ["Real-time Embedded Systems","Energy-efficient Solutions","Programming","Drone Research"]
}
# 1.2 Напишете функция, която да показва информацията за определен лектор.

def lector_info(key)
   puts $arr[key]
end

lector_info("Paul Barry")

# 1.3 Напишете функция, която да връща 2-рата и 4-тата сфера на интерес за всеки лектор.

def second_fourth(key)
  return
    $arr[key][1]
    $arr[key][3]
end

# 1.4 Напишете функция, която да показва 4-тата сфера за определен лектор.

def fourth(key)
  puts $arr[key][3]
end

fourth("Charles Neuman")

# 1.5 Напишете функция, която да заменя „Programing” в данните на всеки лектор с “Software
# Engineering”. Проверете, че промяната е вътре в структурата, не само замяна при принтиране.

# ~~~~~ ПЪРВИ ВАРИАНТ ~~~~~

def replacement(key)
  $arr[key].instance_eval { insert(index("Programming"), "Software Engineering") }
  $arr[key].delete("Programming")
end

replacement("Paul Barry")
$arr["Paul Barry"]

# ~~~~~ ВТОРИ ВАРИАНТ ~~~~~

=begin
	
def replacement(key)
   count = 0
  key.each do |element|
    
    if element.eql? "Programming"
      key[count] = "Software Engineering"
    end
    count += 1
  end
end

def replace_programming
  $arr.each_value{|val| replacement(val)} 
end

replace_programming
$arr
	
=end

# 1.6 Напишете функция, която да сортира по азбучен ред сферите на всеки лектор. Проверете, че
# промяната е вътре в структурата, не само замяна при принтиране.

  def sorting(key)
  key.sort!{ |x, y| x <=> y }
end

def sort_hash
   $arr.each_value{|val| sorting(val)}
 end

 sort_hash
 $arr

# 1.7 Напишете функция, която да разменя първата и последната сфери за всеки лектор. Проверете,
# че промяната е вътре в структурата, не само замяна при принтиране.



