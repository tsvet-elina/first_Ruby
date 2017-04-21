#На Ruby напишете код, който да връща 1, когато е TRUE и 0, когато e FALSE за следните ситуации

def to_binary(n)
  return "0" if n == 0

  r = []

  32.times do
    if (n & (1 << 31)) != 0
      r << 1
    else
      (r << 0) if r.size > 0
    end
    n <<= 1
  end

  r.join
end

#A. Който и да е бит на x e 0
def bitsA(n)
	num = to_binary(n)
	count = 0
	i = 0
	num.each do
		if num[i] > 0
			count += 1
		end
		if count > 0
			return 1
		else
			return 0
			i += 1
		end
	end
end



#B. Който и да е бит на x e 1

def bitsB(n)
	num = to_binary(n)
	count = 0
	i = 0
	num.each do
		if num[i] == 0
			count += 1
		end
		if count > 0
			return 1
		else
			return 0
			i += 1
		end
	end
end


#C. Който и да е бит на least-significant (най-десния) байт на x e 1

def least_significant(num)
	if 1 & num == 1
		return 1
	else
		return 0
	end
end

puts least_significant(2)
#D. Който и да е бит на most-significant (най-левия) байт на x e 0

def most_significant(n)
	num = to_binary(n)
	i = num.length - 1
	if (num[i] == 0)
		return true
	else
		return false
	end
end