def ask_first_name
    puts "Y'a Vald qui demande c'est quoi ton, blase" 
    first_name = gets.chomp
    return first_name
end

def say_hello(data)
    puts "Bonjour, #{data} !"
end

say_hello(ask_first_name)