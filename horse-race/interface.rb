# Print a welcome message
# Print the horses availbe to select
# - Display the horse names with a number to select
# Select a horse to bet on (by number)
# Run the race
# Print the results
# If the user wins then print "Congradulations" else "Sorry"

horses = [
  'Seabiscuit',
  'Apache',
  'Blackie',
  'Warfire',
  'Deathstar',
  'Luke Skywalker',
  'Leia',
]

`say "Welcome to the horse race!!!!"`

user_choice = 0
computer_choice = 1

while user_choice != computer_choice
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

  print "\nPlease select your horse: "
  user_choice = horses[gets.chomp.to_i - 1]
  computer_choice = horses.sample

  # puts "user: #{user_choice} computer: #{computer_choice}"

  `say "The winner is...... #{computer_choice}"`
  if (user_choice == computer_choice)
    puts "You win!!!"
  else
    puts "Sorry, you lose. Better luck next time."
  end
end
