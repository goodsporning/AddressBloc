require_relative 'controllers/menu_controller'

menu = MenuController.new

system "clear"
puts "Welcome to AddressBloc!"

menu.main_menu

class AddressBook
    attr_reader :entries
    
    def initialize
        @entries = []
    end
end
