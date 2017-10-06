spent_points = fn attrs -> attrs.strength * 2 + attrs.dexterity * 3 + attrs.intelligence * 3 end
character = %{strength: 14, dexterity: 15, intelligence: 16}
IO.puts spent_points.(character)
