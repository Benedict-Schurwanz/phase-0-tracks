=begin



=end

#puts "Please type a password: "
#password = gets.chomp


def encrypt(password)
  encrypted_password = ""
  index = 0
  while index < password.length
    if (password[index] != " ") && (password[index] != "z")
      encrypted_password[index] = password[index].next
    elsif password[index] == " "
      encrypted_password[index] = password[index]
    elsif password[index] == "z"
      encrypted_password[index] = "a"
    end
    index += 1
  end


  puts "the encrypted password is #{encrypted_password}"
  p encrypted_password
end

=begin
 take one letter of the encrypted password
 find out where in the alphabet that is
 and make that spot in the decrypted password
 equal to one spot earlier in the alphabet

encrypted_password[index]
decrypted_password[index] = alphabet[alphabet.index(encrypted_password[index]) - 1]

=end

def decrypt(encrypted_password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  #alphabet.index(encrypted_password[index])
  decrypted_password = ""

  index = 0
  while index < encrypted_password.length
   if encrypted_password[index] != " "
     decrypted_password[index] = alphabet[alphabet.index(encrypted_password[index]) - 1] 
    elsif encrypted_password[index] == " "
      decrypted_password[index] = encrypted_password[index]
   end
    index += 1
  end

  puts "Decrypted password is #{decrypted_password}"
  
  p decrypted_password
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))