require "rails_helper"

RSpec.describe User, type: :model do

  context "Testar se User é Válido." do
    it "Email já existe" do
      user = User.new(email: "alex@eu.com", password: 12345679)

      expect(user.valid?).to be_truthy
    end

    it "Email Não existe" do
      user = User.new(email: "alex@eu.com", password: 123456789)

      user.valid?

      expect(user).to be_valid
    end
  end


  context "Testar se Infos foram preenchidas Corretamente." do
    it "Email e Senha Obrigatórios" do
      user = User.new(email: nil, password: nil)

      user.valid?

      expect(user).not_to be_valid
    end

    it "Senha Não pode ser Menor que 5 caracteres" do
      user = User.new(email: "teste@teste.com", password: 12345)

      expect(user).not_to be_valid
    end

    it "Senha Maior que 5 caracteres" do
      user = User.new(email: "teste@teste.com", password: "12345A")

      expect(user).to be_valid
    end
 end

end