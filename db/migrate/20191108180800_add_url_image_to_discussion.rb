class AddUrlImageToDiscussion < ActiveRecord::Migration[5.2]
  def change
    add_column :discussions, :url_image, :string
  end
end
