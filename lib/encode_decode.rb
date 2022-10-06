def encode(plaintext, key)
    
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    cipher

    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    
    return ciphertext_chars.join

end

#encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  
def decode(ciphertext, key)

    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
    
    return plaintext_chars.join

end

#p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
#p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
#p "theswiftfoxjumpedoverthelazydog"
  # Intended output:
  #
  # > 
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  
  # => "theswiftfoxjumpedoverthelazydog"
  