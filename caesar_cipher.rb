
def caesar_cipher(text, shift)
    for i in 0...text.length do
      char_code = text[i].ord
      
      (a, z) = case char_code
               when 97..122 then [97, 122]   # a-z
               when 65..90  then [65, 90]    # A-Z
               else next
      end
  
      rotate = shift > 0 ? 26 : -26
  
      char_code += shift
      char_code -= rotate unless char_code.between?(a, z)
  
      text[i] = char_code.chr
    end
  end
  
  messagem = "essa é a mensagem vai para ser criptografada!!"
  
  caesar_cipher(messagem, 21)
  
  puts messagem