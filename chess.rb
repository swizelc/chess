require 'rubygems'
require 'terminal-table/import'
require 'colorize'

def b(char)
  return char.colorize(:cyan)
end

def r(char)
  return char.colorize(:light_red)
end

rows = []
rows << ["+", "A", "B", "C", "D", "E", "F", "G", "H"]
rows << :separator
rows << ["1", b("C"), b("N"), b("B"), b("K"), b("Q"), b("B"), b("N"), b("C")]
rows << :separator
rows << ["2", b("P"), b("P"), b("P"), b("P"), b("P"), b("P"), b("P"), b("P")]
rows << :separator
rows << ["3", "", "", "", "", "", "", "", ""]
rows << :separator
rows << ["4", "", "", "", "", "", "", "", ""]
rows << :separator
rows << ["5", "", "", "", "", "", "", "", ""]
rows << :separator
rows << ["6", "", "", "", "", "", "", "", ""]
rows << :separator
rows << ["7", r("P"), r("P"), r("P"), r("P"), r("P"), r("P"), r("P"), r("P")]
rows << :separator
rows << ["8", r("C"), r("N"), r("B"), r("K"), r("Q"), r("B"), r("N"), r("C")]

board = Terminal::Table.new :rows => rows
system "clear"
puts board
