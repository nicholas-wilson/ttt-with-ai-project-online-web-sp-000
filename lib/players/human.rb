class Players::Human < Player
  def move(input)
    puts "Enter a number 1-9."
    input = gets.chomp
    input
  end
end
