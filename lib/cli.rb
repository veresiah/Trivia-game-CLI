class CLI 
    def run 
        greeting 
        list_categories 
        #main_menu
        goodbye
    end 

    def greeting 
        system "clear"
        puts "Hello! Welcome to Trivia CLI. Let's play!"
        sleep(1)
        puts "loading... categories"
        sleep (1)
    end 

    def list_categories
        API.categories 
        Category.all.each.with_index(1) do |c,i|
            puts "#{i}. #{c.name}"
            sleep(1)
        end 
    end 

    def goodbye
        sleep(2)
        puts "Thank you for playing. See you soon. Goodbye"
        sleep(2)
        system "clear"
    end 
end 