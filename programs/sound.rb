require "smalruby"

frog1 = Character.new(costume: "frog1.png", x: 261, y: 191, angle: 0)

frog1.on(:click) do
  play(name: "piano_do.wav")
end
