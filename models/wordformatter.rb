
class WordFormatter

  attr_reader :address, :building, :postcode, :phone

    def initialize(address="3 ARGYLE HOUSE", building="CODEBASE", postcode="eh3 2qf", phone="01315588030")
      @address = address
      @building = building
      @postcode = postcode
      @phone = phone
    end

    def format_postcode
      pc_no_spaces = @postcode.delete(" ")
      char_array = pc_no_spaces.split("")
      char_array.each { |char| char.upcase! }
      char_array.insert(-4, " ")
      return char_array.join
    end

    def camel_case(str)
      words = str.split(" ")
      words.each { |word| word.capitalize! }
      return words.join
    end



end