require "smalruby"

init_hardware
frog1 = Character.new(costume: "frog1.png", x: 261, y: 191, angle: 0)

frog1.on(:click) do
  say(message: "ライトをぴかっとさせるでよ♪")
  led("D2").on
  sleep(1)
  led("D2").off
  sleep(1)
  led("D13").on
  sleep(1)
  led("D13").off
  say(message: "")
end
