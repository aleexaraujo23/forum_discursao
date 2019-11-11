require "rails_helper"

RSpec.describe Discussion, type: :model do

  context "Testar se Post Válido." do

    it "Tem um título" do
      disc = Discussion.new
      disc.headline = "Teste se tem Titulo"
      disc.user_id = 1

      expect(disc).to be_truthy
    end

    it "Não Tem um título" do
      discussion = Discussion.new(headline: nil, user_id: 1)

      discussion.valid?

      expect(discussion).not_to be_valid
    end

    it "Tem um User válido" do
      disc = Discussion.new
      disc.headline = "Teste se tem Titulo"
      disc.user_id = 1

      expect(disc).to be_truthy
    end

    it "Não Tem um User válido" do
      discussion = Discussion.new(headline: "Teste se tem Titulo", user_id: nil)

      discussion.valid?

      expect(discussion).not_to be_valid
    end
  end

end