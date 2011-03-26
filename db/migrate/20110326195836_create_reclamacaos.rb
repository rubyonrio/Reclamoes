class CreateReclamacaos < ActiveRecord::Migration
  def self.up
    create_table :reclamacaos do |t|
      t.string :titulo
      t.text :descricao
      t.string :tipo
      t.integer :usuario_id
      t.string :empresa

      t.timestamps
    end
  end

  def self.down
    drop_table :reclamacaos
  end
end
