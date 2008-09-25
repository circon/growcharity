class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
      t.column :course_id,                 :integer
      t.column :question_id,               :integer
      t.column :answer_id,                 :integer
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
    end
  end

  def self.down
    drop_table :quizzes
  end
end
