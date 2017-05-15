class ChangeDataTypeForContentfieldForLecture < ActiveRecord::Migration
  def change
    change_column(:lectures, :content, :text)
  end
end
