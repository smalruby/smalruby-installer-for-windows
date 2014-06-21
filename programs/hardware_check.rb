require "smalruby"

init_hardware
frog1 = Character.new(costume: "frog1.png", x: 261, y: 191, angle: 0)

frog1.on(:click) do
  say(message: "赤(右)のLEDを光らせる")
  led("D13").on
  sleep(3)
  led("D13").off
  say(message: "緑(左)のLEDを光らせる")
  led("D2").on
  sleep(3)
  led("D2").off
  say(message: "前に進む")
  two_wheel_drive_car("D9").forward
  sleep(2)
  say(message: "後ろに戻る")
  two_wheel_drive_car("D9").backward
  sleep(2)
  say(message: "右に回転する")
  two_wheel_drive_car("D9").turn_right
  sleep(2)
  say(message: "左に回転する")
  two_wheel_drive_car("D9").turn_left
  sleep(2)
  say(message: "止まる")
  two_wheel_drive_car("D9").stop
  sleep(2)
  say(message: "")
end
