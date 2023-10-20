
# frozen_string_literal: true

# nested if example and convert to and operator

require 'stringio'
chunked_data = StringIO.new("7\r\nMozilla\r\n9\r\nDeveloper\r\n7\r\nNetwork\r\n0\r\n\r\n")

data = "".dup
until chunked_data.eof?
  if chunk_head = chunked_data.gets("\r\n")
    if chunk = chunked_data.read(chunk_head.to_i)
      data << chunk
    end
  end
end

puts "Data: #{data}"

# and conversion example


until chunked_data.eof?
  chunk_head = chunked_data.gets("\r\n") and
    chunk = chunked_data.read(chunk_head.to_i) and
    data << chunk
end

puts "Data2: #{data}"





