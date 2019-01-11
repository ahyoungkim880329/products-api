module RequestSpecHelper
  # JSONレスポンスをRuby Hashにパーシング
  def json
    JSON.parse(response.body)
  end
end
