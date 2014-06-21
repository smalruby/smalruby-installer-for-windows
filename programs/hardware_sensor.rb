require "smalruby"

init_hardware
frog1 = Character.new(costume: "frog1.png", x: 261, y: 191, angle: 0)

frog1.on(:sensor_change, "A0") do
  say(message: sensor("A0").value)
end


frog1.on(:click) do
  play(name: "piano_fa.wav")
end
