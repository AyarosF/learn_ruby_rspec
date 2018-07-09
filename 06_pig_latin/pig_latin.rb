
def translate(string)
   vowels = %w{a e i o u}

   # Transforme string en array (chaque élément = un mot):

   sentence = string.split(" ")

   # Pour chaque élément de l'array recréé un array pour les lettres :

   sentence.map! do |word|
     letters = word.split("")

    # Cherche index de la 1ère lettre correspondant à une des lettres de "vowels" :

     find_vowel = letters.index do |letter|
     vowels.include?(letter)
    end

    # Si la première voyelle est un "u" et que la lettre précédente est un "q", on cherche index suivant

     if letters[find_vowel] == "u" && letters[find_vowel-1] == "q"
        find_vowel += 1
     end

  # Change l'ordre des éléments de l'array en le faisant commencer par l'index retenu // ajoute "ay" en dernier élément // renvoie un array avec string des lettres :

     letters.rotate!(find_vowel)
     letters.push("ay")
     letters.join
    end

  # Retransforme array modifié en string avec espace

  sentence.join(" ")
end
