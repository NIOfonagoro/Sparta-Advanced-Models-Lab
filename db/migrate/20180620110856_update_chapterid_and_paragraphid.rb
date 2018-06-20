class UpdateChapteridAndParagraphid < ActiveRecord::Migration[5.2]
  def change
    remove_column :chapters, :paragraph_id
    add_column :paragraphs, :chapter_id, :string
  end
end
