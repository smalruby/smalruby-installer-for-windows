require 'smalrubot'

Smalrubot.debug_mode = true
board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)

=begin
# LED
board.digital_write(13, Smalrubot::Board::HIGH)
sleep(5)
board.digital_write(13, Smalrubot::Board::LOW)
=end

=begin
# Analog sensor
10.times do
  p board.analog_read(0)
  sleep(0.5)
end
=end

=begin
# Button
10.times do
  p board.digital_read(3)
  p board.digital_read(4)
  sleep(0.5)
end
=end

=begin
# Adafruit NeoPixel
board.set_neo_pixel_pin(5)

3.times do |i|
  0.step(255, 16).each do |j|
    color = [0, 0, 0]
    color[i] = j
    board.set_neo_pixel_color(0, *color)
    board.show_neo_pixel
    sleep(0.1)
  end

  255.step(0, -16).each do |j|
    color = [0, 0, 0]
    color[i] = j
    board.set_neo_pixel_color(0, *color)
    board.show_neo_pixel
    sleep(0.1)
  end

  board.set_neo_pixel_color(0, 0, 0, 0)
  board.show_neo_pixel
end
=end
