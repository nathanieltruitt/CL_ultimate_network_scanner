# frozen_string_literal: true

require 'socket'

# simple TCP scanner
class Scanner
  def self.scan(host, port)
    begin
      Socket.tcp(host, port.to_i, connect_timeout: 5) do
        puts "successfully connected to #{host} on port #{port}"
      end
    rescue Errno::ETIMEDOUT
      puts "failed to connect to #{host} on #{port} after 5 attempts"
    end
  end
end
