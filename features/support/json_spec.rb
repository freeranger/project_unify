module JSONSpecInterface
  def last_json
    @last_response.body
  end
end

World(JSONSpecInterface)