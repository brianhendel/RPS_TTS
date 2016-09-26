
def rps_logic()
    rps_arr = ["rock", "paper", "scissors"]
    user_score = 0
    comp_score = 0
    
    while user_score < 3 && comp_score < 3
        puts "What is your choice?"
        user_choice = gets.chomp.downcase
        comp_choice = rps_arr.sample

        if rps_arr.include? user_choice
            puts "You chose #{user_choice} and the computer chose #{comp_choice}."
            if user_choice == comp_choice
                puts "It's a tie!"
            elsif user_choice == "rock" && comp_choice == "paper"
                puts "The computer wins! Sorry"
                comp_score += 1
            elsif user_choice == "rock" && comp_choice == "scissors"
                puts "You win! Congrats!"
                user_score += 1
            elsif user_choice == "paper" && comp_choice == "rock"
                puts "You win! Congrats!"
                user_score += 1
            elsif user_choice == "paper" && comp_choice == "scissors"
                puts "The computer wins! Sorry"
                comp_score += 1
            elsif user_choice == "scissors" && comp_choice == "rock"
                puts "The computer wins! Sorry"
                comp_score += 1
            elsif user_choice == "scissors" && comp_choice == "paper"
                puts "You win! Congrats!"
                user_score += 1
            else
                puts "Something went wrong!"
            end
            puts "The current score is User: #{user_score} and Comp: #{comp_score} \n"
        else
            puts "Not a valid entry! Please try again."
        end
    end
end

puts "Welcome to the Rock / Paper / Scissors game! You're playing to best of five wins."
rps_logic

puts "Would you like to play again?"
answer = gets.chomp.downcase
if answer == "yes"
    rps_logic()
else
    puts "Thanks for playing!"
end
