# frozen_string_literal: true

require_relative 'network_scanner_cli/scanner'

# CLI entry point
class CLI
  def self.run
    user_input = ''
    puts 'Welcome to the ultimate network scanner, well it\'s not really because it only scans one host and port at a time'
    puts "Please type in a command!\n"

    puts "Usage: scan [HOST] [PORT]"

    until user_input.include? 'exit'
      print 'ultimate_network_scanner>'
      user_input = gets.chomp

      break if user_input == 'exit'

      user_input = user_input.split(' ') if user_input.include?(' ')

      if user_input.is_a?(Array) && user_input[0] == 'scan'
        Scanner.scan(user_input[1], user_input[2])
      else
        puts 'Not enough arguments'
      end
    end
  end
end
