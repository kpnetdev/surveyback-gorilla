class ChangeQuestion < ActiveRecord::Migration
  def change
  	t.remove :title, :body
  	t.add :text
  end
end
