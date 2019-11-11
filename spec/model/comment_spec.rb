require "rails_helper"

RSpec.describe Comment, type: :model do

  context "Testar se Comentário é Válido." do

    it "Não pode haver comentários antes da Publicacao." do
      expect { Comment.create.comments.new}.not_to raise_error(ActiveRecord::RecordInvalid)
    end

    it "Contem ao menos comentário" do
      comment = Comment.new
      comment.comment = "Tem sim."
      comment.url_image = nil
      comment.discussion_id = 11
      comment.user_id = 1

      expect(comment).to be_truthy
    end


    it "Contem ao menos imagem" do
      comment = Comment.new
      comment.comment = nil
      comment.url_image = "Url_image.jpeg"
      comment.discussion_id = 11
      comment.user_id = 1

      expect(comment).to be_truthy
    end

    it "Contem Referencia do Post" do
      comment = Comment.new
      comment.comment = "Tem comment"
      comment.url_image = nil
      comment.discussion_id = 11
      comment.user_id = 1

      expect(comment).to be_truthy
    end
    it "Não contem Referencia do Post" do
      comment = Comment.new
      comment.comment = "Tem comment"
      comment.url_image = nil
      comment.discussion_id = nil
      comment.user_id = 1

      comment.valid?

      expect(comment).not_to be_valid
    end

    it "Contem Referencia do User" do
      comment = Comment.new
      comment.comment = "Tem comment"
      comment.url_image = nil
      comment.discussion_id = 11
      comment.user_id = 1

      expect(comment).to be_truthy
    end
    it "Não contem Referencia do User" do
      comment = Comment.new
      comment.comment = "Tem comment"
      comment.url_image = nil
      comment.discussion_id = 11
      comment.user_id = nil

      comment.valid?

      expect(comment).not_to be_valid
    end

   end

end