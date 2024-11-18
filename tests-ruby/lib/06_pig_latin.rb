def translate(sentence)
  # Définir les voyelles
  vowels = %w[a e i o u]
  
  # Diviser la phrase en mots
  words = sentence.split
  
  # Traduire chaque mot
  translated_words = words.map do |word|
    # Vérifier si le mot commence par une voyelle
    if vowels.include?(word[0])
      word + "ay"
    else
      # Trouver l'indice où commence la première voyelle (en tenant compte des règles spéciales)
      qu_index = word.index(/qu/)
      first_vowel_index = word.index(/[aeiou]/)
      
      # Si 'qu' est trouvé avant une voyelle, traiter comme une unité
      if qu_index && qu_index < first_vowel_index
        prefix = word[0..qu_index + 1]
        word[prefix.size..-1] + prefix + "ay"
      else
        prefix = word[0...first_vowel_index]
        word[first_vowel_index..-1] + prefix + "ay"
      end
    end
  end
  
  # Rejoindre les mots traduits pour reformer la phrase
  translated_words.join(" ")
end