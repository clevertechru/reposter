class PlatformServices < ActiveRecord::Migration
  def change
    create_table :platform_services do |t|
      t.string :title
      t.string :api_model
      t.boolean :enabled, default: false
      t.integer :state

      t.timestamps
    end

    add_index :platform_services, [:id, :enabled]
  end

  def up
    api = [
        ['site', nil],
        ['twitter',       'Api::Twitter'],
        ['googleplus',    'Api::GooglePlus'],
        ['facebook',      'Api::Facebook'],
        ['vkontakte',     'Api::Vkontakte'],
        ['odnoklassniki', 'Api::Odnoklassniki'],
        ['mailru',        'Api::MyMailRu']
    ]
    api.each do |row|
      PlatformService.find_or_create_by_title({title: row[0], api_model: row[1]}, :without_protection => true)
    end
  end
end
