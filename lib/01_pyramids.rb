def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (pas plus de 25)"
    print "> "
    number = gets.chomp.to_i
    if number < 1 || number > 25
        puts "Le nombre doit être entre 1 et 25 .."
    else
        height = number
        puts "Voici la pyramide :"
        for i in 1..height
            number -= 1
            puts " " * number + "#" * i
        end
    end
end

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (pas plus de 25)"
    print "> "
    number = gets.chomp.to_i
    if number < 1 || number > 25
        puts "Le nombre doit être entre 1 et 25 .."
    else
        height = number
        puts "Voici la pyramide :"
        for i in 1..height
            number -= 1
            puts " " * number + "#" * i + "#" * (i - 1)
        end
    end
end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    number = gets.chomp.to_i
    if number < 1 || number > 25 || number.even?
        puts "Le nombre doit être entre 1 et 25, ET impair .."
    else
        height = number/2
        space = 1
        puts "Voici la pyramide :"
        for i in 1..(number/2 + 1)
            puts " " * height + "#" * i + "#" * (i - 1)
            height -=1
        end
        for i in (number/2).downto(1)
            puts " " * space + "#" * i + "#" * (i - 1)
            space += 1
        end
    end
end

# half_pyramid()
# full_pyramid()
wtf_pyramid()