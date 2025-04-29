def rules (stairs)
    number = rand(1..6)
    if (5..6).include?(number)

        # puts "Tu as fais #{number}, tu montes d'une marche ! Relance le dé"
        stairs += 1
        # puts "Tu es actuellement sur la marche #{stairs}"
        return stairs

    elsif (2..4).include?(number)

        # puts "Tu as fais #{number}, relance le dé"
        # puts "Tu es actuellement sur la marche #{stairs}"
        return stairs

    else
        if stairs >= 2
            stairs -= 1
            # puts "Oh non tu as fais #{number}, tu descends d'une marche ! Relance le dé tu auras plus de chance cette fois"
            # puts "Tu es actuellement sur la marche #{stairs}"
        else
            # puts "Oh non tu as fais #{number}, tu descends d'une marche ! Relance le dé tu auras plus de chance cette fois"
            # puts "Tu es actuellement sur la marche #{stairs}"
        end
        return stairs
    end
end

def launch
    stairs = 1
    turns = 0
    # puts "Jeu de l'escalier"
    while stairs < 10
        turns += 1
        stairs = rules (stairs)
    end
    # puts "Tu as lancé #{turns} dé !"
    return turns
end

def average_finish_time
    sum = 0
    for i in 1..100
        sum += launch
    end
    average = sum.to_i / 100
    puts "Moyenne sur 100 parties : #{average} lancers de dé"
end

average_finish_time