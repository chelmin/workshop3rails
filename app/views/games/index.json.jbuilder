json.array!(@games) do |game|
  json.extract! game, :id, :number, :completed
  json.url game_url(game, format: :json)
end
