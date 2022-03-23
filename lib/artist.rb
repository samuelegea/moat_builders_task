class Artist
  include HTTParty
  
  def self.all
    fetch.map(&:first)
  end
  
  def self.find(id)
    all.find { |artist| artist[:id] == id }
  end

  def self.all_names
    all.map { |artist| artist[:name] }
  end
  
  private

  base_uri "https://www.moat.ai/api/task/"

  def self.fetch
    response = get("", headers: {'Basic': 'ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=='}, format: :plain, verify: false)
    JSON.parse response, symbolize_names: true
  end
end
