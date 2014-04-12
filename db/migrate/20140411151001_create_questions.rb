class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :title
  		t.string :body
  		t.string :answer_type

  		t.belongs_to :survey

  		t.timestamps
  	end
  end
end