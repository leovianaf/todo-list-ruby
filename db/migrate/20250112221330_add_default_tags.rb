class AddDefaultTags < ActiveRecord::Migration[8.0]
  def up
    Tag.create([{ name: 'Urgente' }, { name: 'Tranquilo' }, { name: 'Lazer' }, { name: 'Pessoal' }, { name: 'Trabalho' }])
  end

  def down
    Tag.delete_all
  end
end
