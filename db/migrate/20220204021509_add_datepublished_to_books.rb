class AddDatepublishedToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :date_published, :date
  end
end
