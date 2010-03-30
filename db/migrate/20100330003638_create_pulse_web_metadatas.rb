class CreatePulseWebMetadatas < ActiveRecord::Migration
  def self.up
    create_table :pulse_web_metadatas do |t|
      t.string :url_title
      t.link :external_url
      t.string :sitetext_format
      t.text :sitetext_html
      t.integer :visit_count

      t.timestamps
    end
  end

  def self.down
    drop_table :pulse_web_metadatas
  end
end
