# frozen_string_literal: true

class Table
  attr_reader :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end
end
