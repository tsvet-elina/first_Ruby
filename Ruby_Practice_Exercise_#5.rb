# Ruby Practice Exercise #5


def rectangle(height, width, outside_height = "|", inside = " ", outside_width = "-")
  1.upto(height) do |row|
    if row == 1
    $outside_middle = outside_width * width
    puts "#{outside_height}#{$outside_middle}#{outside_height}"
    elsif row == height
    puts "#{outside_height}#{$outside_middle}#{outside_height}"
    else
      middle = inside * width
      puts "#{outside_height}#{middle}#{outside_height}"
    end
  end
end



 rectangle(5, 6)