def signup
    puts "Veuillez définir votre mot de passe"
    password = gets.chomp
    return password
end

def login(password)
    attempt = nil
    while attempt != password
        puts ""
        puts "Mot de passe : "
        attempt = gets.chomp
        puts ""
        puts "Mot de passe incorrect, veuillez réessayer."
        if attempt != password
        end
    end
    puts "Connecté avec succès !"
end

def welcome_screen
    system("clear") || system("cls")

    width = 100

    green_back   = "\e[42m"   # fond vert
    white_fg  = "\e[97m"   # texte en blanc
    bold      = "\e[1m"    # texte en gras
    reset     = "\e[0m"    # reset styles

    border    = green_back + " " * width + reset
    empty_row = green_back + " " + (" " * (width - 2)) + " " + reset

    puts border
    puts empty_row # saut de ligne

    puts green_back + white_fg + bold +
        "#" + " TOP SECRET ".center(width - 2, "#") +
        "#" + reset

    puts empty_row # saut de ligne

    puts green_back + white_fg +
        "#" + "Accès autorisé à la zone secret défense".center(width - 2) +
        "#" + reset

    puts green_back + white_fg +
    "#" + "Tout partage du contenu ci-dessous entrainera des poursuites judiciaires".center(width - 2) +
    "#" + reset

    puts empty_row # saut de ligne

    puts green_back + white_fg +
        "#" + " CIA dashboard :".ljust(width - 2) + "#" + reset

    secrets = [
    "- Opération Nightfall: 72 UAV MR-X déployés sur zone 47-B à 03:45 UTC",
    "- Blackbird Team: infiltration réussie dans la base Echo-7, extraction prévue à 23:59 Zulu",
    "- Codename Ironclad: convoyeur de 50 chars MK-IV estimé sur site Delta-3 demain 04:00 Hrs",
    "- Protocole Orion: activation alerte Niv. 5, évacuation du personnel sur site Sierra-X",
    "- Dossier HADES: stockage sécurisé de la référence « Neutrino-III » dans l’Anthéon UT-3"
    ]
    secrets.each do |line|
        puts green_back + white_fg +
            "#" + "  #{line}".ljust(width - 2) +
            "#" + reset
    end

    puts empty_row
    puts border
end

def start
    password = signup
    login(password)
    welcome_screen
end

start