def ceacer_cipher(message,key)
    ascii_value = message.chars.map(&:ord)
    new_ascii_value = ascii_value.map do |c|
      base = c < 91 ? 65 : 97
      if c.between?(65,90) || c.between?(97,122)
        (((c - base) + key) % 26) + base
      else
        c
      end
    end
    result = new_ascii_value.map(&:chr).join("")
end
        