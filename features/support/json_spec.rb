module JSONSpecInterface
  def last_json
    @last_response.body
  end
end

JsonSpec.configure do
  exclude_keys "id", "created_at", "updated_at", "profile"
end

World(JSONSpecInterface)