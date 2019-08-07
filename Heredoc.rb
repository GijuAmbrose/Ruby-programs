class Heredoc

    def initialize(input)
        puts(
         <<-eos
        
            sample string : "#{input}"
    
        eos
        )
    end
end

input = gets.chomp
Heredoc.new(input)