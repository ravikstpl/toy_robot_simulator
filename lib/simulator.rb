# frozen_string_literal: true

require_relative 'table'
require_relative 'toy_robot'

class Simulator
  def initialize
    @table = Table.new(Constant::ROWS, Constant::COLUMNS)
    @robot = ToyRobot.new(@table)
  end

  def execute(command)
    puts @robot.eval(command)
  rescue Exception => e
    puts e.message
  end
end
