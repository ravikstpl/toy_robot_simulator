# frozen_string_literal: true

require './lib/simulator'

simulator = Simulator.new
puts 'WELCOME TO TOY ROBOT SIMULATOR'
puts 'Enter a command, Valid commands are:'
puts "\'PLACE X,Y,NORTH|SOUTH|EAST|WEST\', MOVE, LEFT, RIGHT, REPORT or EXIT"

command = STDIN.gets

while command
  command.strip!
  if command.downcase == 'exit'
    puts 'Good Bye'
    exit
  else
    output = simulator.execute(command)
    puts output if output
    command = STDIN.gets
  end
end
