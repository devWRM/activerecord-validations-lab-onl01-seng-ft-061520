class TitleValidator < ActiveModel::Validator
    
    def validate(record)
       
#  Lab instructions: "Won't Believe", "Secret", "Top [number]", or "Guess"


        if record.title
 
            unless record.title.match?("Won't Believe") || record.title.match?("Secret") || record.title.match?(/Top [0-9]/) || record.title.match?("Guess")

                record.errors[:title] << "Must contain something"
            end

        end
            # def validate(record)
            #     unless record.email.match?(/flatironschool.com/)
            #       record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
            #     end
            #   end





    end


end




