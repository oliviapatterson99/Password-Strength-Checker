class Password < ApplicationRecord
    def is_strong?
        return true if self.characters.match?(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/)
        false
    end

    def contains_number?
        return true if self.characters.match?(/^(?=.*?[0-9])/)
        false
    end

    def contains_lowercase?
        return true if self.characters.match?(/^(?=.*?[a-z])/)
        false
    end

    def contains_uppercase?
        return true if self.characters.match?(/^(?=.*?[A-Z])/)
        false
    end

    def contains_special_character?
        return true if self.characters.match?(/^(?=.*?[#?!@$%^&*-])/)
        false
    end
    
    def is_minimum_length?
        return true if self.characters.length >= 8
        false
    end
end
