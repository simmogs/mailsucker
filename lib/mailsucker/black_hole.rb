require "mini-smtp-server"

class BlackHole < MiniSmtpServer
  def new_message_event(message_hash)
    puts "# New email received:"
    puts "-- From: #{message_hash[:from]}"
    puts "-- To:   #{message_hash[:to]}"
    puts "--"
  end
end
