require "mailsucker/version"
require "mailsucker/black_hole"

module Mailsucker
  def self.new_black_hole
    server = BlackHole.new(2525, "127.0.0.1", 4)
    server.start
    server.join
  end
end
