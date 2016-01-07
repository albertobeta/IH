#Caesar Cipher 

def solve_cipher(input,shift = -3)

	input.each_char do |encryptedCharacter|
		if encryptedCharacter.to_s == " "
			print "\s"
		else 
			print (encryptedCharacter.ord+shift).chr
		end
	end

#newline
puts

end

# returns "hello"
solve_cipher("ifmmp", -1)

# returns "my real name is donald duck"
solve_cipher("p| uhdo qdph lv grqdog gxfn")
