class AirbenderService

  def members(nation)
    if nation = 'fire_nation'
      nation = "Fire"
    end 
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    json = JSON.parse(response.body, symbolize_names: true)
    #json.map{|nation| nation[:name]}
  end

  def conn
    url = "https://last-airbender-api.herokuapp.com/"  
    response = Faraday.new(url)    
  end
end