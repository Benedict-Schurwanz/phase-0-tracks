#DBC Phase 0 - Assignment 4.6
#by Benedict Schurwanz and Kari Gilchrist

#puts "Please type a password: "
#password = gets.chomp

=begin
        #Pseudocode - encrypt

Go through the password one letter at a time,
take the next letter in the alphabet from that letter,
and put the new letter in the corresponding spot 
in a new "encrypted password" variable. 
Repeat this process starting with 0
and going up to the length of the password

If a character in the password is a space, 
just copy the space over to the corresponding spot 
in the encrypted password

If a character in the password is the letter z, 
the next letter would be "aa", 
so instead just make that spot in the encrypted password
a letter "a". 

=end

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


  puts "the encrypted password is: "
  p encrypted_password
end

=begin
 take one letter of the encrypted password
 find out where in the alphabet that is
 and make that spot in the decrypted password
 equal to one spot earlier in the alphabet.

if a character in the encrypted password is a space, 
just copy that space over to decrypted password. 



encrypted_password[index]
decrypted_password[index] = alphabet[alphabet.index(encrypted_password[index]) - 1]

When the letter in the encrypted password is "a", 
the index in the alphabet of "a" is "0", 
so when we subtract 1 to go to one spot earlier in the alphabet,
the index in the alphabet becomes "-1", 
which then tells the program to use the last letter 
in the alphabet string variable, which is "z". 

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

  puts "Decrypted password is: "
  
  p decrypted_password
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")
#decrypt(encrypt("swordfish"))


# OUR DRIVER CODE
# ask user if they would like to encrypt or decrypt a password

puts "Do you want to decrypt or encrypt a password?"
method = gets.chomp

puts "Please type a password"
msg = gets.chomp
#if user wants to decrypt run the decrypt method
if method == "encrypt"
  encrypt(msg)
#if user wants to encrypt run the encrypt method
elsif method == "decrypt"
   decrypt(msg)
#if user did not type decrypt or encrypt say we didn't understand and exit
else
  "Sorry I did not understand that"
end
exit
