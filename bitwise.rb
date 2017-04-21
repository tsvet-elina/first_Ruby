#i. Напишете функции за сетване и почистване на бит. (set_bit(value,
#bit_position) и clear_bit(value, bit_position))

def set_bit(num,value, position)
	return num |= value << position
end
def clear_bit(num, value, position)
	return num &= ~(value << position)
end



#ii. Write a function htoi(s), which converts a string of hexadecimal
#digits (including an optional 0x or 0X) into its equivalent integer
#value. The allowable digits are 0 through 9, a through f, and A through F.


class String
	
def convert_base(from, to)
	self.to_i(from).to_s(to)
end
end

puts '0b4F'.convert_base(16,2)

#iii. In a two's complement number system, x &= (x-1) deletes the
#rightmost 1-bit in x. Explain why. Use this observation to write a
#faster version of bitcount.

class Bit
		def Bit.main(args)
			Console.Write(Bit.bitcount(24))
		end

		def Bit.bitcount(x)
			y = 0
			while x != 0
				y += 1
				x &= x - 1
			end
			return y
		end
	end


#iv. Напишете функция, която да провери дали аргументът е степен на 2.

def check_arg(argument)
	if argument & 2 == 0
		return true
	else
		return false
	end
end

puts check_arg(16)

#v. Да размените две числа само с побитови операции.

a = 1
b = 3

a = a ^ b
b = b ^ a
a = a ^ b

puts a

puts b