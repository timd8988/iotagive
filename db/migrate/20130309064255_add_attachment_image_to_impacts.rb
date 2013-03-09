class AddAttachmentImageToImpacts < ActiveRecord::Migration
  def self.up
    change_table :impacts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :impacts, :image
  end
end
