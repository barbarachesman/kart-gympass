class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :laps do |t|
      t.time :hora
      t.string :nome_piloto
      t.integer :id_volta
      t.time :tempo_volta
      t.decimal :velocidade_media
      t.timestamps
    end
  end
end
